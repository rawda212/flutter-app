
import 'package:flutter/material.dart';

Widget statusList()=>Container(
  width: 70,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Stack(
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
      ),
      Text('rawda saleh ',textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,)
    ],
  ),
);