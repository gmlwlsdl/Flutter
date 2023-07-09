import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  List<String> testImgList = [
    'https://cdn.pixabay.com/photo/2023/05/31/14/20/mountains-8031511_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/06/11/08/52/waves-8055488_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/03/11/20/01/tree-7845181_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/06/08/08/27/plant-8049076_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/03/22/01/41/little-girl-7868485_1280.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            //color: Colors.white70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2013/11/01/11/13/dolphin-203875_1280.jpg')),
                    SizedBox(
                      width: 5,
                    ),
                    Text('user1234')
                  ],
                ),
                Icon(Icons.subject),
              ],
            ),
          ),
          Container(
            child: Image.network(testImgList[Random().nextInt(5)]),
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            //color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(Icons.chat),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(Icons.send)
                  ],
                ),
                Container(
                  width: 60,
                  child: Text('indic'),
                ),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            //color: Colors.pink,
            child: Center(child: Text('좋아요')),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            //color: Colors.green,
            child: Center(child: Text('설명')),
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            //color: Colors.yellow,
            child: Center(child: Text('댓글')),
          ),
        ],
      ),
    );
  }
}
