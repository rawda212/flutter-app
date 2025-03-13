
import 'package:dio/dio.dart';

import 'package:pro/models/products_model.dart';
class ApiProvider {
  final String baseUrl = "https://dummyjson.com";
ProductsModel ? productsModel;
  Future<ProductsModel?> getProducts() async {
    try {
      Response response = await Dio().get("$baseUrl/products");
      print(response.data);
      return ProductsModel.fromJson(response.data);
    } catch (e) {
      print("Error: ${e.toString()}");
      return null;
    }
  }
}



