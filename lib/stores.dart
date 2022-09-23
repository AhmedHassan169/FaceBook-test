import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Container(
          width: 150,
          height: 500,
          decoration: const BoxDecoration(
          ),
        ),
        Container(

            child:
            const CircleAvatar(
            radius: 15,
                child :
                Icon(Icons.account_circle_rounded, color: Colors.white, size: 25,))
        ) ,

        const Positioned(
          top: 120 ,
          left: 25,
          child: Text('ahmed' ,
            style: TextStyle(fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold , ),
                textAlign: TextAlign.center,
          ),
        ),
      ],

    );
  }
}
