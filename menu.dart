// Importa los paquetes necesarios
import 'package:color_match/challenger.dart';
import 'package:color_match/main.dart';
import 'package:color_match/levels.dart';
import 'package:flutter/material.dart';



// Define the Menu class as a StatelessWidget, representa la pantalla del Menu
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
                title:const Text(''),
                leading:IconButton(
                    icon:Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    }
                )
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('MENU',textScaler: TextScaler.linear(3.5), style: TextStyle(fontWeight: FontWeight.bold),),
                  // Button for "Jugar" (Play)
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 300,
                    height: 65,
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
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
                              return Levels();
                            },
                          ),
                        );
                      },
                      child: Text("Jugar"), //Button label
                    ),
                  ),
                  // Button for "Desafio Semanal" (Weekly Challenge)
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 300,
                    height: 65,
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
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
                              return DesafioSemanal();
                            },
                          ),
                        );
                      },
                      child: Text("Desafio Semanal"),
                    ),
                  ),
                  // Button for "Tabla de clasificación" (Leaderboard)
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 300,
                    height: 65,
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
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
                              return Levels();
                            },
                          ),
                        );
                      },
                      child: Text("Tabla de clasificación"), //button label
                    ),
                  ),
                  // Button for "Configuración" (Settings)
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 300,
                    height: 65,
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor: WidgetStatePropertyAll(Colors.amber),
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((
                            Set<WidgetState> states,
                            ) {
                          if (states.contains(WidgetState.pressed)) {
                            return Colors.black.withGreen(122);
                          }
                          return null;
                        }),
                      ),
                      onPressed: () {    //on button pressed for "configuration"
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Levels(); // Navigate to levels screen
                            },
                          ),
                        );
                      },
                      child: Text("Configuración"), //button text
                    ),
                  ),

                ],

              ),
            )
        )
    );
  }
}