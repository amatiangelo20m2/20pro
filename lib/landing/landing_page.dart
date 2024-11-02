import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../global/style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20PRO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();

    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const FcmTokenPage()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', width: 200),
            const SizedBox(height: 20),
            SpinKitThreeBounce(color: globalBlue, size: 30.0, controller: _controller),
          ],
        ),
      ),
    );
  }
}

class FcmTokenPage extends StatefulWidget {
  const FcmTokenPage({super.key});

  @override
  _FcmTokenPageState createState() => _FcmTokenPageState();
}

class _FcmTokenPageState extends State<FcmTokenPage> {
  String? _fcmToken;
  String _deviceInfo = 'Loading device info...';

  @override
  void initState() {
    super.initState();
    _fetchDeviceInfo();
    _retrieveFcmToken();

  }

  Future<void> _retrieveFcmToken() async {
    try {
      FirebaseMessaging messaging = FirebaseMessaging.instance;
      NotificationSettings settings = await messaging.requestPermission(
        alert: true, badge: true, sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        String? token = await messaging.getToken();
        setState(() => _fcmToken = token);
        print('FCM Token: $_fcmToken');
      } else {
        setState(() => _fcmToken = 'Permission denied');
      }
    } catch (e) {
      setState(() => _fcmToken = 'Error retrieving FCM token: $e');
    }
  }

  Future<void> _fetchDeviceInfo() async {


    final deviceInfoPlugin = DeviceInfoPlugin();
    String info = '';

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      info = 'OS: Android\nModel: ${androidInfo.model}\nBrand: ${androidInfo.brand}\nVersion: ${androidInfo.version.release}';
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      info = 'Platform: ${Platform.operatingSystem}\n\n'
          'Model: ${iosInfo.model}\n\n'
          'System: ${iosInfo.systemName}\n\n'
          'machine: ${iosInfo.utsname.machine}\n\n'
          'release: ${iosInfo.utsname.release}\n\n'
          'identifierForVendor: ${iosInfo.identifierForVendor}\n\n'
          'systemVersion: ${iosInfo.systemVersion}';
    }

    setState(() => _deviceInfo = info);
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => CupertinoActionSheet(
        title: const Text('Choose an Option'),
        message: const Text('Select one of the options below.'),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print('Option 1 selected');
            },
            child: const Text('Option 1'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print('Option 3 selected');
            },
            child: const Text('Option 3'),
            isDestructiveAction: true,
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
            print('Cancelled');
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.qr_code_2_outlined, color: Colors.white),
        onPressed: () {},
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text('FCM Token Retriever'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                color: CupertinoColors.activeBlue,
                onPressed: () => _showActionSheet(context),
                child: const Text('Show Action Sheet'),
              ),
              const SizedBox(height: 20),
              const Text('Device Info:', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(_deviceInfo, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 20),
              const Text('FCM Token:', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(_fcmToken ?? 'Retrieving FCM token...', textAlign: TextAlign.center, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
