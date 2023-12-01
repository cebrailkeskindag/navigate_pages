import 'package:flutter/material.dart';
import 'package:navigate_pages/pages/pageY.dart';

class PageX extends StatefulWidget {
  const PageX({ Key? key }) : super(key: key);

  @override
  _PageXState createState() => _PageXState();
}

class _PageXState extends State<PageX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("X sayfası"),
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
                style: ElevatedButton.styleFrom(backgroundColor:Colors.indigo, foregroundColor: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Anasayfa")),
        ],
      )),
    );
  }
}