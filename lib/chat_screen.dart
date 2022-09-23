import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  static const String Routname = 'chat';
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/im/prof.jpg'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
              Container(
                  padding: EdgeInsets.only(left: 20), child: Text('ahmed')),
            ],
          ),
          actions: const [
            Icon(Icons.video_call),
            SizedBox(width: 8),
            Icon(Icons.call),
            SizedBox(width: 8),
            Icon(Icons.more_vert),
          ],
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/im/background.png'),
                    fit: BoxFit.fill)),
            child: Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      ClipRRect(
                        child: Image.asset(
                          'image/im/person.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(width: 2.5, color: Colors.white)),
                          child: const Text(
                            'اهلا بيك يغالى ',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white70),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(width: 2.5, color: Colors.white)),
                          child: const Text(
                            'حبيببي اتفضل ',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white70),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ClipRRect(
                        child: Image.asset(
                          'image/im/person.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  Spacer(), // دى بتخليني اروح لاخر الاسكرينه

                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: Colors.white70,
                                ),
                                suffixIcon: Icon(
                                  Icons.attach_file,
                                  color: Colors.white70,
                                ),
                                labelText: 'اكتب رسالتك هنا  ',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    // دى الظاهره من غير ما ادوس
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3)),
                                focusedBorder: OutlineInputBorder(
                                    // دى اما ادوس عليها
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3)))),
                      ),
                      SizedBox(width: 15),
                      Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              // دا عشاان اخليه دايره
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: Border.all(
                                  // عشان احطلو بوردر
                                  width: 1,
                                  color: Colors.white)),
                          child: Icon(Icons.mic, color: Colors.white)),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
