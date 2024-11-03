import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/main_screen.dart';
import '../app/login/login_screen.dart';
import '../global/style.dart';
import '../state_manager/restaurant_state_manager.dart'; // Import the state manager

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _loadData();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();

  }

  Future<void> _loadData() async {
    try{
      await Future.delayed(const Duration(seconds: 3));

      // Access the state manager
      final stateManager = Provider.of<RestaurantStateManager>(context, listen: false);
      if (stateManager.currentEmployee != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      } else {
        // User is not logged in, navigate to the login page
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      }
    }catch(e){
      print(e);
    }

  }

  @override
  void dispose() {
    // Dispose of animation controller when the widget is disposed
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
            Image.asset('assets/images/logo.png', width: 130),
            const SizedBox(height: 20),
            SpinKitThreeBounce(
                color: globalBlue, size: 30.0, controller: _controller),
          ],
        ),
      ),
    );
  }
}
