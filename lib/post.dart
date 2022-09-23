 import 'package:flutter/material.dart';

class Post extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Column(
       children: [

         Row(
           children: [
             Column(
               children: [
                 Container(
                     margin: EdgeInsets.all(10),
                     child:
                     const CircleAvatar(
                         radius: 30,
                         child :
                         Icon(Icons.account_circle_rounded, color: Colors.white, size: 25,))
                 ),
               ],
             ),

             Column(
               children: [
                 Row(
                   children: [
                     Text('Owner',style: TextStyle(fontWeight: FontWeight.bold),),
                   ],
                 ),
                 Row(
                   children: [
                     Text('3h',style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(width: 5),
                     Icon(Icons.public, size: 20,)
                   ],
                 )
               ],
             )
           ],
         ),
         Row(
           children: [
             Container(
                 margin: EdgeInsets.all(10),
                 child: Text('This is My Post', style: TextStyle (fontSize: 30),)),
           ],
         ) ,
         SizedBox(height: 5, ) ,
         Row(
           children: [
             Container(    margin: EdgeInsets.only(left: 15 , right: 15), child: Text('100')),
             Container( width: 50,
                 height: 50,
                 child: Image.asset('image/im/like.jpg', )),
             Spacer(),
             Container( margin: EdgeInsets.only(right: 10),
                 child: Text('100 coment')),
             SizedBox(height: 20, ) ,
           ],
         ),
         Container(
           width: double.infinity,
           height: 2,
           color: Colors.black54,
         ),
         Row(
           children: [
             Expanded(
               child: Container(
                   margin: EdgeInsets.all(15),
                   child: Row(
                     children: [
                       Image.asset('image/im/singleLike.jpg', width: 25,height: 25, ),
                       SizedBox(width: 10,),
                       Text('Like' , style: TextStyle(fontWeight: FontWeight.bold),),
                     ],
                   )),
             ),
             Expanded(
               child: Container(
                   margin: EdgeInsets.all(10),
                   child: Row(
                     children: [
                       Image.asset('image/im/comment.jpg', width: 20,height: 20, ),
                       SizedBox(width: 10,),
                       Text('Comment', style: TextStyle(fontWeight: FontWeight.bold),),
                     ],
                   )),
             ),
             Expanded(
               child: Container(
                   margin: EdgeInsets.all(15),
                   child: Row(
                     children: [
                       Image.asset('image/im/share.png', width: 25,height: 20, ),
                       SizedBox(width: 10,),
                       Text('share', style: TextStyle(fontSize: 20 ,  ) , ),
                     ],
                   )
               ),
             ),
           ],
         ),
         Container(
           width: double.infinity,
           height: 2,
           color: Colors.black54,
         ),

       ],


     );
   }
 }

