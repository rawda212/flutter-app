import 'package:dio/dio.dart';
import 'package:pro/models/products_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ApiProvider {
  final String baseUrl = "https://dummyjson.com";
  ProductsModel ? productsModel;

  Future<ProductsModel?> getProducts() async {
    try {
      Response response = await Dio().get("$baseUrl/products",queryParameters: {
        "select":"id,title,description,category,price,thumbnail"
      });
      print(response.data);
      return ProductsModel.fromJson(response.data);
    } catch (e) {
      print("Error: ${e.toString()}");
      return null;
    }
  }

  useLoginEmail({required String email, required String password}) async {
    final SharedPreferences prefs =await SharedPreferences.getInstance();
    try {
      FormData userData = FormData.fromMap({
        "username": email, "password": password,

      });
      Response response = await Dio().post(
          "$baseUrl/auth/login", data: userData);
      print(response.data['access_token']);
      prefs.setString("token", response.data['access_token']);
      return response.data;
    } catch (e) {
      print("Error: ${e.toString()}");
      if(e is DioException){
        print(e.response?.data["message"]);
        throw Exception(e.response?.data["message"]);
      }
    }
  }
}