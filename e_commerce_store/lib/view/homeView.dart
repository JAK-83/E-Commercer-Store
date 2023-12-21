import 'package:e_commerce_store/ViewModel/homeViewModel.dart';
import 'package:e_commerce_store/componants/HomeView%20Componants/appbarr.dart';
import 'package:e_commerce_store/componants/HomeView%20Componants/productdisplaycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      ////its like initstate it load data from api when app get active or in use
       onViewModelReady: (model) { 
         model.getProductData();
         model.waiiit();

          },
      viewModelBuilder: ()=>HomeViewModel(), 
      builder: (BuildContext context,viewController,child){
        return Scaffold(
          appBar: MyAppBar(),

          body:
           
              viewController.loading ==true 
              ?
              /////shimer loading
              Shimmer.fromColors(
                 baseColor: Colors.blue, 
                 highlightColor: Colors.grey.shade700,
                 enabled: viewController.loading,
                 child:  ListView.builder(
                  shrinkWrap: true,
                  itemCount:   viewController.productdataa.length ,// viewController.todos.length ,//viewController.users.length,//    viewController.post.length,
                  itemBuilder: (context, index) {
                    final productDataa=viewController.productdataa[index];
                   return 
                  ProductDisplayContainer(
                     oontap: (){ },
                    producttitle: productDataa.title.toString(),
                productAvailablity: productDataa.rating!.count.toString(),
                productImgurl: productDataa.image.toString(),
                category:productDataa.category.toString() ,
             price:productDataa.price.toString() ,

              );
                  }),
                 )
          
          
          :
           ListView.builder(
            itemCount: viewController.productdataa.length,
            shrinkWrap: true,
            itemBuilder: (context,index){
               final productDataa=viewController.productdataa[index];
              return  ProductDisplayContainer(
                oontap: (){
                  ////send clicked product data to Product Detai Screen
                   viewController.naviGatToProDuctDetailView(
                    productDataa.title.toString(), 
                    productDataa.price.toString(),
                    productDataa.description.toString(),
                    productDataa.category.toString(), 
                    productDataa.image.toString(), 
                    productDataa.rating!.rate.toString(), 
                    productDataa.rating!.count.toString()
                    );
                },
                ////display Products 
                producttitle: productDataa.title.toString(),
                productAvailablity: productDataa.rating!.count.toString(),
                productImgurl: productDataa.image.toString(),
                category:productDataa.category.toString() ,
             price:productDataa.price.toString() ,

              );
            })
        );
      });
  }
}