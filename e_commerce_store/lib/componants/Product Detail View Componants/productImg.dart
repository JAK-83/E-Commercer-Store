import 'package:flutter/cupertino.dart';
class ProductImg extends StatelessWidget {
  final String imgUrl;
  const ProductImg({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                  
                    height: MediaQuery.sizeOf(context).height * .3,
                    width: MediaQuery.sizeOf(context).width * .5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imgUrl))),
                  ),
            );
  }
}