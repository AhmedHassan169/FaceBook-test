import 'package:faceahmed/chat_screen.dart';
import 'package:faceahmed/home.dart';

import 'package:flutter/material.dart';

class face extends StatelessWidget {
  static const String Routname = 'facebook';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                    alignment: AlignmentDirectional.center,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'image/im/face.png',
                          width: 100,
                          height: 90,
                        ))),
                Column(
                  children: [
                    Container(
                        width: 300,
                        height: 90,
                        child: TextFormField(
                          style: const TextStyle(
                              color:
                                  Colors.white), // بيخلى اللون ابيض اما اكتب
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            // enabledBorder: UnderlineInputBorder(  // دى لو عايز اخليها خط وتلغى الكيرف
                            //   borderSide: BorderSide(color: Colors.white),
                            // ),

                            focusedBorder: UnderlineInputBorder(
                              // دى عشان اما يدوس يحط خط تحت المكان اللى هيتكتب فيه
                              borderSide: BorderSide(color: Colors.white),
                            ),

                            border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular( 30.0),
                                ),

                            labelText: 'اكتب اليوزر بتاعك  ',
                            // hintText: 'dskjndksnc',  label text دا نوع تانى مكان
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),

                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.white70,
                            ),
                          ),
                        )),
                  ],
                ),
                Container(
                  width: 300,
                  height: 100,
                  // clipBehavior: Clip.antiAlias ,

                  child: TextFormField(
                    // دى عشان اما الكيبورد يطلع اما ادوس ع الحروف اختار يبقي ارقام ولا نص
                    style: TextStyle(color: Colors.white),

                    keyboardType: TextInputType.number,
                    obscureText: true, // دى عشان اما يكتب الكلام ميظهرش

                    decoration: const InputDecoration(
                      labelText: 'Password ',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),

                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white70,
                      ),

                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular( 30.0),
                          ),

                      // enabledBorder: UnderlineInputBorder(  // بيخلى الحدود سطر وبيحطلها لون
                      //   borderSide: BorderSide(color: Colors.white),
                      // ),

                      focusedBorder: UnderlineInputBorder(
                        // دى عشان اما يدوس يحط خط تحت المكان اللى هيتكتب فيه
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  // width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, home.Routname);
                      },
                      child: const Text(
                        'login',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: const Text(
                    'Sign up for FaceBook',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'forget passwrd?',
                      style: TextStyle(
                          fontSize: 16, color: Colors.white.withOpacity(.5)),
                    )),
              ],
            ),
          ),
        ));
  }
}
