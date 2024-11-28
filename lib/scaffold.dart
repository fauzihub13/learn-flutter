// SCAFFOLD
import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.red, shape: BoxShape.circle),
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Hello",
                  style: TextStyle(fontSize: 30.0),
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 6),
                      blurRadius: 10,
                    )
                  ],
                  border: Border.all(color: Colors.green, width: 3),
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Hello",
                  style: TextStyle(fontSize: 30.0),
                )),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Padding',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
          ],
        ),
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
