import 'package:flutter/material.dart';
import 'package:navigate_pages/pages/pageY.dart';

class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  _PageBState createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("B sayfası"),
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
            style: ElevatedButton.styleFrom(backgroundColor:Colors.yellow, foregroundColor: Colors.white),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageY()));
              },
              child: const Text("Y Sayfası")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:Colors.deepOrangeAccent, foregroundColor: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("A sayfası")),
        ],
      )),
    );
  }
}
