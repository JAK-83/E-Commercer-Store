// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:e_commerce_store/view/homeView.dart' as _i2;
import 'package:e_commerce_store/view/productDetailView.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i6;

class Routes {
  static const homeView = '/';

  static const productDetailView = '/product-detail-view';

  static const all = <String>{
    homeView,
    productDetailView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.productDetailView,
      page: _i3.ProductDetailView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.ProductDetailView: (data) {
      final args = data.getArgs<ProductDetailViewArguments>(nullOk: false);
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.ProductDetailView(
            key: args.key,
            ProductTitle: args.ProductTitle,
            Price: args.Price,
            Description: args.Description,
            category: args.category,
            imgUrl: args.imgUrl,
            rating: args.rating,
            availableitems: args.availableitems),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ProductDetailViewArguments {
  const ProductDetailViewArguments({
    this.key,
    required this.ProductTitle,
    required this.Price,
    required this.Description,
    required this.category,
    required this.imgUrl,
    required this.rating,
    required this.availableitems,
  });

  final _i5.Key? key;

  final String ProductTitle;

  final String Price;

  final String Description;

  final String category;

  final String imgUrl;

  final String rating;

  final String availableitems;

  @override
  String toString() {
    return '{"key": "$key", "ProductTitle": "$ProductTitle", "Price": "$Price", "Description": "$Description", "category": "$category", "imgUrl": "$imgUrl", "rating": "$rating", "availableitems": "$availableitems"}';
  }

  @override
  bool operator ==(covariant ProductDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.ProductTitle == ProductTitle &&
        other.Price == Price &&
        other.Description == Description &&
        other.category == category &&
        other.imgUrl == imgUrl &&
        other.rating == rating &&
        other.availableitems == availableitems;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        ProductTitle.hashCode ^
        Price.hashCode ^
        Description.hashCode ^
        category.hashCode ^
        imgUrl.hashCode ^
        rating.hashCode ^
        availableitems.hashCode;
  }
}

extension NavigatorStateExtension on _i6.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductDetailView({
    _i5.Key? key,
    required String ProductTitle,
    required String Price,
    required String Description,
    required String category,
    required String imgUrl,
    required String rating,
    required String availableitems,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productDetailView,
        arguments: ProductDetailViewArguments(
            key: key,
            ProductTitle: ProductTitle,
            Price: Price,
            Description: Description,
            category: category,
            imgUrl: imgUrl,
            rating: rating,
            availableitems: availableitems),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductDetailView({
    _i5.Key? key,
    required String ProductTitle,
    required String Price,
    required String Description,
    required String category,
    required String imgUrl,
    required String rating,
    required String availableitems,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productDetailView,
        arguments: ProductDetailViewArguments(
            key: key,
            ProductTitle: ProductTitle,
            Price: Price,
            Description: Description,
            category: category,
            imgUrl: imgUrl,
            rating: rating,
            availableitems: availableitems),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
