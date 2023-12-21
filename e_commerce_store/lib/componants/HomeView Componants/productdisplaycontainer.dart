import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDisplayContainer extends StatelessWidget {
  final String producttitle;
  final String price;
  final String category;
  final String productImgurl;
  final String productAvailablity;
  final VoidCallback oontap;
  const ProductDisplayContainer({Key? key, required this.price, required this.category, required this.productImgurl, required this.productAvailablity, required this.producttitle, required this.oontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: oontap,
        child: Container(
          //   padding:const EdgeInsets.only(left: 10,right:10),
          height: MediaQuery.of(context).size.height*.2 ,
          width: MediaQuery.sizeOf(context).width*.01,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset:const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /////poroduct img
              Padding(
                padding:const  EdgeInsets.all(8.0),
                child: Container(
                
                  height: MediaQuery.sizeOf(context).height * .2,
                  width: MediaQuery.sizeOf(context).width * .3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(productImgurl))),
                ),
              ),
              ////
              Padding(
                padding: const EdgeInsets.only(top:10,left: 10,right: 30,bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /////product title
                Flexible(
                  child: Text( producttitle.split(' ').take(2).join(' '),
                  overflow: TextOverflow.ellipsis,
                    style:const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                
                /////product Category
                Text(category,
                  style:const TextStyle(),
                ),
                
                /////productAvailablity
                Text(
                  "AvailAble: ${productAvailablity}",
                  style:const TextStyle(),
                ),
                
                /////product price
                Text(
                  "\$ ${price}",
                  style:const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
