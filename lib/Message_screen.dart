
import 'package:flutter/material.dart';

Widget messageScreen()=>Row(

  children: [
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaHfpIhAPZHSbZstaGEgFBIjZZ-Y-K533dag&s'),
          radius: 30,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 7,
        ),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 6,
        )
      ],
    ),
    SizedBox(width: 15,),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Rawda saleh',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          SizedBox(height: 8,),
          Row(children: [
            Expanded(
              child: Text('hello  hi hello  hi hello  hi hello  hi  hello  hi  hello hello  hi  hi ',style: TextStyle(fontSize: 15),
                maxLines: 1,overflow: TextOverflow.ellipsis,),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 8,
              width: 8,
            ),
            SizedBox(width: 8,),
            Text('02:00 pm')
          ],)
        ],
      ),
    )
  ],
);