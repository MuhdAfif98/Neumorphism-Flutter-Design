import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphism Design Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Neumorphism Demo'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(children: [
          ConcaveNeumorphismDesign(),
          SizedBox(height: 20),
          ConvexNeumorphismDesign(),
          SizedBox(height: 20),
          FlatNeumorphismDesign(),
        ]),
      ),
    );
  }
}

//Concave Neumorphism Design
class ConcaveNeumorphismDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-1, 1),
            end: Alignment(1, 1),
            colors: [
              Color(0xFFE6E6E6),
              Color(0xFFFFFFFF),
            ],
          ),
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(color: Color(0xffcccccc), blurRadius: 40, offset: Offset(20, 20)),
            BoxShadow(color: Color(0xffffffff), blurRadius: 40, offset: Offset(-20, -20))
          ]),
      child: const Center(
          child: Icon(
        Icons.bookmark,
        size: 50,
        color: Colors.blueGrey,
      )),
    );
  }
}

//Convex Neumorphism Design
class ConvexNeumorphismDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-1, -1),
            end: Alignment(1, 1),
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFE6E6E6),
            ],
          ),
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(color: Color(0xffcccccc), blurRadius: 40, offset: Offset(20, 20)),
            BoxShadow(color: Color(0xffffffff), blurRadius: 40, offset: Offset(-20, -20))
          ]),
      child: const Center(
          child: Icon(
        Icons.favorite,
        size: 50,
        color: Colors.blueGrey,
      )),
    );
  }
}

//Flat Neumorphism Design
class FlatNeumorphismDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40), boxShadow: const [
        BoxShadow(color: Color(0xffcccccc), blurRadius: 40, offset: Offset(20, 20)),
        BoxShadow(color: Color(0xffffffff), blurRadius: 40, offset: Offset(-20, -20))
      ]),
      child: const Center(
          child: Icon(
        Icons.favorite_border,
        size: 50,
        color: Colors.blueGrey,
      )),
    );
  }
}
