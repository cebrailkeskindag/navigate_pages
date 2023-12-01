import 'package:flutter/material.dart';

class PageY extends StatefulWidget {
  const PageY({Key? key}) : super(key: key);

  @override
  _PageYState createState() => _PageYState();
}

class _PageYState extends State<PageY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("Y sayfası"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Geri dönüş işlevselliği
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text("Anasayfa")),
        ],
      )),
    );
  }
}
