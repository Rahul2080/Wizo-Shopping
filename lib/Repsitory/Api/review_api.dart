import 'dart:convert';


import 'package:http/http.dart';
import 'package:wizoshopping/Repsitory/Api/api_client.dart';
import '../ModelClass/ReveiwModel.dart';



class ReveiwApi {
  ApiClient apiClient = ApiClient();


  Future<ReveiwModel> getproduct(String id) async {
    String trendingpath = 'https://real-time-amazon-data.p.rapidapi.com/product-reviews?asin=$id&country=US&sort_by=TOP_REVIEWS&star_rating=ALL&verified_pur';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return ReveiwModel.fromJson(jsonDecode(response.body));
  }
}