import 'package:faceahmed/chat_messanger.dart';
import 'package:faceahmed/chat_screen.dart';
import 'package:faceahmed/post.dart';
import 'package:faceahmed/stores.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  static const String Routname = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true, // دا بيخلى الكلام اللى ف الاب بار ف النص

        title: Text('home screen ', style: TextStyle(fontSize: 25)),
        actions: [
          InkWell(
            child: Icon(
              Icons.whatsapp,
              size: 30,
            ),
            onTap: () => Navigator.pushNamed(context, chat.Routname),
          ),
          SizedBox(width: 25),
          InkWell(
            child: Icon(
              Icons.facebook_outlined,
              size: 35,
            ),
            onTap: () => Navigator.pushNamed(context, messnger.Routname),
          ),
          SizedBox(width: 3),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          Row(
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 110,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('image/im/prof.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(220, 220, 220, 100),
                        width: 110,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 25),
                              child: CircleAvatar(
                                radius: 17,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'انشاء قصه ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal, // بحدد اتجاه الاسكرول
                      itemCount: 50, // بتحدد عدد العناصر
                      itemBuilder: (context, itemCount) {
                        // دى اللى بيتحط فيها الداتا اللى هتتعرض
                        return Container(
                          margin: EdgeInsets.only(right: 10, top: 5, left: 5),
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage('image/im/person2.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Story(),
                        );
                      }),
                ),
              ),
            ],
          ),
          SizedBox(height: 11),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, itemCount) {
                return Post();
              },
            ),
          )
        ],
      ),
    );
  }
}

// child: Container(
//
//   child: Stack (
//     alignment: Alignment.bottomCenter,
//     children: const [
//       CircleAvatar(
//
//         radius: 20,
//         child:  Positioned(
//              top: 150,
//             right: 50,
//
//             child: Icon(Icons.add , color: Colors.white, )),
//       ),
//         SizedBox(height: 20),
//       Text('انشاء قصه ' , style: TextStyle( fontWeight: FontWeight.bold),
//       ),
//     ],
//   ),
// )
