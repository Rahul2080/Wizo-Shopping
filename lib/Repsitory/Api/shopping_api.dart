import 'dart:convert';


import 'package:http/http.dart';
import 'package:wizoshopping/Repsitory/Api/api_client.dart';
import 'package:wizoshopping/Repsitory/ModelClass/AmazonModel.dart';



class ShoppingApi {
  ApiClient apiClient = ApiClient();


  Future<AmazonModel> getShopping(bool forAll,String searchKey) async {
    String trendingpath = '';
    if(forAll==true){
      trendingpath='https://real-time-amazon-data.p.rapidapi.com/search?query=Phone&page=1&country=US&sort_by=RELEVANCE&product_condition=ALL';
    }else{
      trendingpath='https://real-time-amazon-data.p.rapidapi.com/search?query=$searchKey&page=1&country=US&sort_by=RELEVANCE&product_condition=ALL';
    }
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return AmazonModel.fromJson(jsonDecode(response.body));
  }
}