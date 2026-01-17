import 'dart:convert';

import 'product_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static Future <List<Product>> fetchProduct() async {

    final respone = await http.get(Uri.parse("https://696b03ee624d7ddccaa00807.mockapi.io/products"));

    if(respone.statusCode==200){
      final List data = jsonDecode(respone.body);
      return data.map((e) => Product.formJson(e)).toList();
    }else{
      throw Exception('fail');
    }
  }
}