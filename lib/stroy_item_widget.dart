import 'package:flutter/material.dart';
import 'package:pro/massanger2_screen.dart';
import 'package:pro/models/products_model.dart';

class StroyItemWidget extends StatelessWidget {
 StroyItemWidget({super.key,required this.product});
Product product;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                // backgroundImage: NetworkImage(
                //   "https://cdn.pixabay.com/photo/2016/08/09/17/avater-1577909_640.png",
                // ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 6,
                ),
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
          SizedBox(height: 10,),
          Text(
           product.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
