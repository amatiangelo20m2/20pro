import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:ventipro/app/core/restaurant/booking.dart';
import 'package:ventipro/global/style.dart';
import 'package:vibration/vibration.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = 'main_screen';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Index of the currently selected button
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const BookingScreen(),
    const Center(child: Text('People Screen')),
    const Center(child: Text('Shopping Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        title: Text('20PRO'),
      ),
      body: Stack(
        children: [
          // Display the selected screen based on button index
          _screens[_selectedIndex],
          Positioned(
            bottom: 30, // Position from the bottom
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0; // Set index for Calendar Screen
                    });
                  },
                  mini: _selectedIndex != 0, // Set to mini if not selected
                  backgroundColor: _selectedIndex == 0 ? Colors.blue : Colors.grey.shade100, // Set background color based on selection
                  foregroundColor: _selectedIndex == 0 ? Colors.white : Colors.black, // Set icon color based on selection
                  child: Icon(Icons.calendar_month),
                ),
                const SizedBox(width: 15), // Space between buttons
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1; // Set index for People Screen
                    });
                  },
                  mini: _selectedIndex != 1, // Set to mini if not selected
                  backgroundColor: _selectedIndex == 1 ? Colors.blue : Colors.grey.shade100, // Set background color based on selection
                  foregroundColor: _selectedIndex == 1 ? Colors.white : Colors.black, // Set icon color based on selection
                  child: Icon(Icons.people),
                ),
                const SizedBox(width: 15),
                FloatingActionButton(
                  heroTag: "btn3",
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2; // Set index for Shopping Screen
                    });
                  },
                  mini: _selectedIndex != 2, // Set to mini if not selected
                  backgroundColor: _selectedIndex == 2 ? Colors.blue : Colors.grey.shade100, // Set background color based on selection
                  foregroundColor: _selectedIndex == 2 ? Colors.white : Colors.black, // Set icon color based on selection
                  child: Icon(Icons.shopping_bag_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
