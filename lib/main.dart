import 'package:counter_app/screens/counter_screen.dart';
import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp() ); //constante para quitar el warning
}

class MyApp extends StatelessWidget {

  const MyApp({ //corrección para constatnte para quitar el warning
    Key? key
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // el material app es un widget
      debugShowCheckedModeBanner: false,
      //home: HomeScreen()//llamar al home screen
      home: CounterScreen()
    );
  }

}