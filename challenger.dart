import 'dart:async';

// import 'package:color_match/menu.dart';
import 'package:flutter/material.dart';



class DesafioSemanal extends StatelessWidget {
  const DesafioSemanal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: const Text('Desafio Semanal'),
                          leading:IconButton(
                    icon:Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Menu(); //Navigate to Menu widget when pressed
                          },
                        ),
                      );
                    }
                )
        ),
        body:  Center( // Center the body content in the middle of the screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ //Child widgets of the column
              Text('Desafio Semanal',textScaler: TextScaler.linear(3.5), style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Container(
                margin: const EdgeInsets.all(20),
                width: 300,
                height: 300,
                padding:EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30), // Borde redondeado
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Text('Completa al menos tres juegos',textScaler: TextScaler.linear(2), style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 16),
                    LinearProgressIndicator(
                      value: 0.7, // 70% completado
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ],
                )
              ),
              FilledButton(
                onPressed: (){},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white
                ),
                child: const Text('Iniciar Desafio'), //button Label
              )
            ],
          )
        ),
      ),
    );
  }
}