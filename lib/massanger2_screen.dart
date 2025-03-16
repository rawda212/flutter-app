import 'package:flutter/material.dart';
import 'package:pro/chat_item_widget.dart';
import 'package:pro/dio/api_provider.dart';
import 'package:pro/stroy_item_widget.dart';
import 'package:pro/models/products_model.dart';

// class Users {
//   final String name;
//   final String message;
//   final String time;
//   Users({required this.name, required this.message, required this.time});
// }

class Massanger2Screen extends StatefulWidget {
  const Massanger2Screen({super.key});
  @override
  State<Massanger2Screen> createState() => _Massanger2ScreenState();
}

// List<Users> users = [
//   Users(
//     name: "Rawda Saleh",
//     message: "my name is Rawda Saleh ",
//     time: "02:00 pm",
//   ),
//   Users(name: "Mhmd", message: "my name is Mhmd", time: "05:00 pm"),
//   Users(name: "Misk", message: "my name is Misk", time: "06:00 pm"),
//   Users(name: " Saleh", message: "my name is Saleh", time: "09:00 pm"),
//   Users(name: "joo", message: "my name is joo", time: "012:00 pm"),
//   Users(
//     name: "Rawda Saleh",
//     message: "my name is Rawda Saleh ",
//     time: "02:00 pm",
//   ),
//   Users(name: "Mhmd", message: "my name is Mhmd", time: "05:00 pm"),
//   Users(name: "Misk", message: "my name is Misk", time: "06:00 pm"),
//   Users(name: " Saleh", message: "my name is Saleh", time: "09:00 pm"),
//   Users(name: "joo", message: "my name is joo", time: "012:00 pm"),
//   Users(
//     name: "Rawda Saleh",
//     message: "my name is Rawda Saleh ",
//     time: "02:00 pm",
//   ),
//   Users(name: "Mhmd", message: "my name is Mhmd", time: "05:00 pm"),
//   Users(name: "Misk", message: "my name is Misk", time: "06:00 pm"),
//   Users(name: " Saleh", message: "my name is Saleh", time: "09:00 pm"),
//   Users(name: "joo", message: "my name is joo", time: "012:00 pm"),
// ];
class _Massanger2ScreenState extends State<Massanger2Screen> {
  // ProductsModel? productsModel;

  List<Product> productsData = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getProductsFromApiProvider();
  }

  Future<void> getProductsFromApiProvider() async {
    ProductsModel? fetchedProducts = await ApiProvider().getProducts();
    // print("==========>${productsModel?.products[0].title}");
    setState(() {
      // productsModel = fetchedProducts;
      productsData = fetchedProducts?.products ?? [];
      isLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              // backgroundImage: NetworkImage(
              // "https://cdn.pixabay.com/photo/2016/08/09/17/avater-1577909_640.png",
              // ),
            ),
            SizedBox(width: 10),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          ),
          SizedBox(width: 10),
        ],
      ),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : productsData.isEmpty
              ? Center(
                child: Text(
                  'No products found',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
              : Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 5),
                            Text("Search"),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 120,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder:
                              (context, index) =>
                                  StroyItemWidget(product: productsData[index]),
                          separatorBuilder:
                              (context, index) => SizedBox(width: 10),
                          itemCount: productsData.length,
                        ),
                      ),
                      SizedBox(height: 15),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: productsData.length,
                        itemBuilder:
                            (context, index) =>
                                ChatItemWidget(product: productsData[index]),
                        separatorBuilder:
                            (context, index) => SizedBox(height: 10),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
