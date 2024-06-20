import 'dart:convert';


import 'package:http/http.dart';
import 'package:wizoshopping/Repsitory/Api/api_client.dart';
import 'package:wizoshopping/Repsitory/ModelClass/ProductModel.dart';



class ProductApi {
  ApiClient apiClient = ApiClient();


  Future<ProductModel> getproduct(String id) async {
    String trendingpath = 'https://real-time-amazon-data.p.rapidapi.com/product-details?asin=$id&country=US';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return ProductModel.fromJson(jsonDecode(response.body));
  }
}