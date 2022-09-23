import 'package:faceahmed/chat_screen.dart';
import 'package:flutter/material.dart';

class messnger extends StatelessWidget {
  static const String Routname = 'messnger';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('image/im/prof.jpg'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
            ),
            Container(
                padding: EdgeInsets.only(left: 20), child: const Text('ahmed')),
          ],
        ),
        actions: const [
          CircleAvatar(
              radius: 18,
              child: Icon(
                Icons.camera_alt,
              )),
          SizedBox(width: 24),
          CircleAvatar(radius: 18, child: Icon(Icons.edit)),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 80,
                    child: TextFormField(
                        // style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            labelText: 'ابحث هنا   ',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              // دى الظاهره من غير ما ادوس
                              borderRadius: BorderRadius.circular(60),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // دى اما ادوس عليها
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 3),
                            ))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => Navigator.pushNamed(context, chat.Routname),
              child: Container(
                height: 90,
                child: ListView.separated(
                  // shrinkWrap: true, //
                  scrollDirection: Axis.horizontal, // بحدد اتجاه الاسكرول
                  itemCount: 50, // بتحدد عدد العناصر
                  itemBuilder: (context, itemCount) {
                    // دى اللى بيتحط فيها الداتا اللى هتتعرض
                    return Expanded(
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: const [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage('image/im/prof.jpg'),
                              ),
                              Positioned(
                                left: 40,
                                child: CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Colors.green,
                                ),
                              )
                            ],
                          ),
                          const Text(
                            'ahmed    ', style: TextStyle(color: Colors.white),
                            maxLines: 2, // دى بتخليلي اقصى عدد للسطور يبقي عدد
                            overflow: TextOverflow
                                .ellipsis, // بتعرفى لو فى كلام مش ظاهر تحط نقط مكانو
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, chat.Routname),
              child: Container(
                height: 440,
                child: ListView.separated(
                  // shrinkWrap: true, //        1-
                  // physics: NeverScrollableScrollPhysics(),  // عشان توقف الاسكرول 2
                  scrollDirection: Axis.vertical, // بحدد اتجاه الاسكرول
                  itemCount: 50,
                  // بتحدد عدد العناصر
                  itemBuilder: (context, itemCount) {
                    // دى اللى بيتحط فيها الداتا اللى هتتعرض
                    return Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: const [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage('image/im/prof.jpg'),
                            ),
                            Positioned(
                              left: 40,
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          // عملت expanded مهم هنا عشان لو الكلام ذاد ينزل سطر تحت
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Ahmed hassan ',
                                maxLines: 1, // اقصى عدد سطور للظهور
                                overflow: TextOverflow
                                    .ellipsis, // عشان لو ذاد كتير يحط نقط جنب الكلام
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: const [
                                  Text('ازيك يا احمد عامل ايه  ',
                                      maxLines: 1, // اقصى عدد سطور للظهور
                                      overflow: TextOverflow
                                          .ellipsis, // عشان لو ذاد كتير يحط نقط جنب الكلام
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.green,
                                  ),
                                  Text('11:48 am',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 20,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              color: Colors.black54,
              width: double.infinity,
              height: 40,
              child: Row(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.chat,
                    color: Colors.white70,
                  )),
                  Expanded(
                      child: Icon(
                    Icons.people_alt,
                    color: Colors.white70,
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
