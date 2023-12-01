import 'package:flutter/material.dart';
import 'package:navigate_pages/pages/pageB.dart';

class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  _PageAState createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: const Text("A sayfası"),
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
            style: ElevatedButton.styleFrom(backgroundColor:Colors.green, foregroundColor: Colors.white),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageB()));
              },
              child: const Text("B Sayfası")),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Anasayfa")),
        ],
      )),
    );
  }
}
