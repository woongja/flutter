import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const chartData = {
      'korea': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'global': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'newyork': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
    };
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "차트",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  color: Colors.purple[900],
                  height: 200,
                  width: double.infinity,
                  child: Column(children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 40, right: 40),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          child: Text(
                            '국가 및 도시별 차트',
                            style: TextStyle(
                              color: Colors.purple[900],
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '전 세계',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ])),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '대한민국 차트',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '모두 보기',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ...chartData['korea']!.map(
                            (song) {
                              // 스프레드 연산자: 리스트 등의 이터러블 안에 있는 요소를 분해한다.
                              String imageUrl = song['imageUrl']!;
                              String name = song['name']!;
                              String artist = song['artist']!;
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      imageUrl,
                                      width: MediaQuery.of(context).size.width *
                                          0.29,
                                    ),
                                    Text(
                                      name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(artist),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '글로벌 차트',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '모두 보기',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ...chartData['global']!.map(
                            (song) {
                              // 스프레드 연산자: 리스트 등의 이터러블 안에 있는 요소를 분해한다.
                              String imageUrl = song['imageUrl']!;
                              String name = song['name']!;
                              String artist = song['artist']!;
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      imageUrl,
                                      width: MediaQuery.of(context).size.width *
                                          0.29,
                                    ),
                                    Text(
                                      name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(artist),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '뉴옥 차트',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '모두 보기',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ...chartData['newyork']!.map(
                            (song) {
                              // 스프레드 연산자: 리스트 등의 이터러블 안에 있는 요소를 분해한다.
                              String imageUrl = song['imageUrl']!;
                              String name = song['name']!;
                              String artist = song['artist']!;
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      imageUrl,
                                      width: MediaQuery.of(context).size.width *
                                          0.29,
                                    ),
                                    Text(
                                      name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(artist),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    )));
  }
}
