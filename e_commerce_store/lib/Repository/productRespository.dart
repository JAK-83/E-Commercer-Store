import 'package:e_commerce_store/Data/Models/apiData.dart';
import 'package:e_commerce_store/Data/api_client.dart';
class ProductRepository{
   static String url = "https://fakestoreapi.com/";  
  final apiClient=ApiClient();
  Future <List<apiData>> getProductData()async{
    List <apiData> productData=[];
  List<dynamic> apiResponse= await apiClient.get("products",url);
  for (var i in apiResponse){
    productData.add( apiData.fromJson(i));
  }
  return productData;
  }
}