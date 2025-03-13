import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/massanger2_screen.dart';
import 'package:pro/models/products_model.dart';

class ChatItemWidget extends StatelessWidget {
  ChatItemWidget({super.key,required this.product});
  Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                product.thumbnail,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 3, end: 6),
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                     product.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        product.category,
                      ),
                  ),
                  Text(product.price.toString()),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

