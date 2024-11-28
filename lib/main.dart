import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreenApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar!'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {},
              child: BiggerText(
                text: 'Kecil',
              )),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text('Perbesar'),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}

// SCAFFOLD
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: const Center(
        child: Text('Hello Fauzi'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class FirstScreenApp extends StatelessWidget {
  const FirstScreenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}
