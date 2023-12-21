import 'package:e_commerce_store/ViewModel/productDetailViewModel.dart';
import 'package:e_commerce_store/componants/Product%20Detail%20View%20Componants/descriptionDataComponant.dart';
import 'package:e_commerce_store/componants/Product%20Detail%20View%20Componants/productImg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class ProductDetailView extends StatelessWidget {
  final String ProductTitle; 
  final String Price;
  final String Description;
  final String category;
  final String imgUrl;
  final String rating;
  final String availableitems;
  const ProductDetailView({Key? key, required this.ProductTitle, required this.Price, required this.Description, required this.category, required this.imgUrl, required this.rating, required this.availableitems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return ViewModelBuilder.reactive(
      viewModelBuilder: ()=>ProductDetailViewModel(), 
      builder: (BuildContext context ,viewController,child){
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top:20,left:20,right:20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
                /////product img
                ProductImg(imgUrl: imgUrl,),
              
                ///Description
                const SizedBox(height: 20,),
                DescriptionDataComponnant(
                  ProductTitle: ProductTitle,
                  category:category ,
                  Description: Description,
                  rating:rating ,
                  Price: Price,
                )
              ],),
            ),
          ),
        );
      });
  }
}