import 'package:e_commerce_store/view/homeView.dart';
import 'package:e_commerce_store/view/productDetailView.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';
@StackedApp(
  routes: [
    MaterialRoute(page: HomeView ,initial: true),
    MaterialRoute(page: ProductDetailView )
  ],
  dependencies:[
    Singleton(classType: NavigationService),
  
  ] )


class app{}