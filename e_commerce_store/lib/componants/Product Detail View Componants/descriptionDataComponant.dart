import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DescriptionDataComponnant extends StatelessWidget {
  final String ProductTitle;
  final String category;
  final String Description;
  final String rating;
  final String Price;
  const DescriptionDataComponnant(
      {Key? key,
      required this.ProductTitle,
      required this.category,
      required this.Description,
      required this.rating,
      required this.Price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /////product title
        Text(
          ProductTitle, //producttitle,
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),

        /////product Category
        const SizedBox(
          height: 10,
        ),
        Text(
          category,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 10,
        ),
        /////Description
        Text(
          Description,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),

        ///rating
        const SizedBox(
          height: 20,
        ),
        RatingBar.builder(
            initialRating: double.parse(rating),
            itemBuilder: (context, _) => Icon(Icons.star),
            onRatingUpdate: (rating) {}),

        /////product price
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "\$ ${Price}",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            const Icon(
              Icons.favorite_border_outlined,
              size: 50,
            )
          ],
        ),

        /////cart icon
        const SizedBox(
          height: 30,
        ),
        const Icon(
          Icons.shopping_cart_outlined,
          size: 60,
        )
      ],
    );
  }
}
