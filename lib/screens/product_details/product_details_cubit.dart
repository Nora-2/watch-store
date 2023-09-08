import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/model/watch_Item_model.dart';
import 'package:signin_signup/screens/product_details/product_details_states.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsStates>{

  List<WatchItem> favoriteProducts=[];
  bool isFavorite = false;
  int quantity = 1;

  ProductDetailsCubit(): super(ProductDetailsInitialState());

  static ProductDetailsCubit get(context) => BlocProvider.of(context);

  changeFavorites(WatchItem item){
    if(item.isFavorite == false){
      item.isFavorite = !item.isFavorite;
      favoriteProducts.add(item);
    }else{
      item.isFavorite = !item.isFavorite;
      favoriteProducts.remove(item);
    }
    emit(ProductDetailsChangeFavoritesState());
  }

  changeQuantity(int value){
    quantity = value;
    emit(ProductDetailsChangeQuantityState());
  }

}