import 'package:flutter/material.dart';
import 'package:color_match/menu.dart';
// Defines a Levels widget which represents the level selection screen in the app.

 {
  const Levels({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(), // Uses a light color scheme
        brightness: Brightness.light, // Specifies the application's brightness as light
      ),
      ),
      home: Scaffold( // Main layout structure for the app
        appBar: AppBar( // AppBar used for navigation and branding
            leading:IconButton( // Back button to navigate to the previous screen
                icon:Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push( // Navigates to the Menu screen
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Menu(); // Returns the Menu widget for display
                      },
                    ),
                  );
                }
            )
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Select Level',
                textScaler: TextScaler.linear(3.5),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                width: 300,
                height: 65,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
                    backgroundColor: WidgetStatePropertyAll(Colors.blue), // Button background color
                  ),
                  onPressed: () {},
                  child: Text('EASY'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 300,
                height: 65,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
                    backgroundColor: WidgetStatePropertyAll(Colors.deepPurple), // Theme color for medium level
                  ),
                  onPressed: () {},
                  child: Text('MEDIUM'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50), // Top margin for separation
                width: 300,
                height: 65,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
                    backgroundColor: WidgetStatePropertyAll(Colors.amber), // Theme color for hard level
                  ),
                  onPressed: () {},
                  child: Text('HARD'), // Button label
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
