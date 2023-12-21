import 'package:e_commerce_store/Data/Models/apiData.dart';
import 'package:e_commerce_store/Repository/productRespository.dart';
import 'package:e_commerce_store/appData/appData.locator.dart';
import 'package:e_commerce_store/appData/appData.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
        
        //create instance of Productapi repositorey
       final productRepository = ProductRepository();

       ///create list to store api response
        List<apiData> productdataa = [];

        ///
         bool loading=true;

        ////load data into created list
         getProductData() async {
    productdataa = await productRepository.getProductData();
    notifyListeners();
    
  }

  ///////loading
waiiit()async{
  await Future.delayed(Duration(seconds: 5));
  loading=false;
      notifyListeners();
}

   ///create instance of navigation
  final navigationservice=locator<NavigationService>();


  ////navigato to Product Detail Screen
  naviGatToProDuctDetailView(
    String ProductTitle,
    String Price,
    String Description,
     String category,
     String imgUrl,
     String rating,
     String availableitems
     ){
    navigationservice.navigateToProductDetailView(
      Price: Price,
      ProductTitle: ProductTitle,
      imgUrl: imgUrl, 
      rating: rating,
      availableitems: availableitems,
      Description: Description,
      category: category

    );
  }


}