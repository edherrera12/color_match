import 'package:color_match/menu.dart'; // Importing the menu screen for navigation
import 'package:flutter/material.dart'; // Importing Flutter's material design library

void main() {
  runApp(const MyApp()); // Execute Myapp widget
}
// MyApp class
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Set the home screen of the application
    );
  }
}
// Homescreen class
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(backgroundColor: Colors.blue[900]),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/logo.GIF', width: 400.0),
            Container(
              margin: EdgeInsets.only(top: 100), // Adds top margin for spacing.
              width: 200, // Adds top margin for spacing.
              height: 50, // Specifies height of the button container.
              child: TextButton(
                style: ButtonStyle(
                  
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                      ) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.black.withGreen(122);
                    }
                    return null;
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Menu();
                      },
                    ),
                  );
                },
                child: Text("Empezar"), // Button text to display
              ),
            ),
          ],
        ),
      ),
    );
  }
}
