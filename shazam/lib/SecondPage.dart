import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shazam/FirstPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);
  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  //
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Column(
                      children: [
                        Icon(Icons.person, color: Colors.white, size: 40),
                        Text("라이브러리",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Column(
                      children: [
                        Icon(Icons.show_chart, color: Colors.white, size: 40),
                        Text(
                          "차트",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 100.0, horizontal: 16.0),
                child: Column(
                  children: [
                    Text(
                      "Shazam하려면 탭하세요",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        "https://i.ibb.co/hxNbZ8p/shazam.png",
                        color: Colors.white,
                        width: 130,
                        height: 130,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 70),
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue[300],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
