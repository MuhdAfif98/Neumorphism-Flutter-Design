import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateful Clicker Counter',
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
        child: ConcaveNeumorphismDesign(),
      ),
    );
  }
}

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
            BoxShadow(
              color: Color(0xffcccccc), 
              blurRadius: 40, 
              offset: Offset(20, 20)),
              BoxShadow(
              color: Color(0xffffffff), 
              blurRadius: 40, 
              offset: Offset(-20, -20))
          ]),
          child: const Center(
            child: Icon(Icons.bookmark, size: 50,color: Colors.blueGrey,)
          ),
    );
  }
}
