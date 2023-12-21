import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:const Text('Products',style: TextStyle(color: Colors.white),),
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: Colors.black,
      leading: Icon(Icons.arrow_back,color: Colors.white,),
      actions: [
        
        ///cart icon
        IconButton(
          icon: Icon(Icons.shopping_cart,color: Colors.white,),
          onPressed: () {
          },
        ),

        ///menu icon
        IconButton(
          icon: Icon(Icons.menu,color: Colors.white),
          onPressed: () {
          },
        ),
      ],
    );
  }
}
