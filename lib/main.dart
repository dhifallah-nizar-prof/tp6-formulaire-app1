import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _longueur=0;
  int _longueurMax=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.input_outlined),
        title: Text("Formulaire sous Flutter"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
            child:
            TextField(
              maxLength: _longueurMax,
          decoration: InputDecoration(
              hintText: "Donner un texte",
          counterText: 'Reste : ${_longueurMax - _longueur}/$_longueurMax caractères.'),
              onChanged: (value) {
                setState(() {
                  _longueur=value.length;
                });
              },

        )),
      ),
    );
  }
}
