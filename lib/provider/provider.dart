import 'package:demo_app/model/gridModel.dart';
import 'package:flutter/cupertino.dart';

import '../model/newModel.dart';

class ExcecutionAreaProvider extends ChangeNotifier {
  List<Product> productList = [
    Product(
        'https://images.all-free-download.com/images/graphiclarge/orange_fruit_vitamins_263334.jpg',
        'ONEFIELD',
        'Orange',
        '250 g pack',
        'Organic,Pesticide Free +2',
        'Rs 150',
        'Rs 100'),
    Product('http://clipart-library.com/images/8ixrRnKxT.jpg', 'ONEFIELD',
        'Banana', '250 g pack', 'Organic,Pesticide Free +2', 'Rs 80', 'Rs 50'),
    Product(
        'https://greebleagro.com/wp-content/uploads/2019/05/Sharad-Seedless-Export-Quality-Grapes-2.png',
        'ONEFIELD',
        'Grapes',
        '250 g pack',
        'Organic,Pesticide Free +2',
        'Rs 100',
        'Rs 70'),
    Product(
        'https://st.depositphotos.com/1642482/3698/i/950/depositphotos_36983317-stock-photo-mango.jpg',
        'ONEFIELD',
        'Mango',
        '250 g pack',
        'Organic,Pesticide Free +2',
        'Rs 100',
        'Rs 70'),
    Product(
        'http://www.freepngclipart.com/download/pineapple/1780-pineapple-png-images.jpg',
        'ONEFIELD',
        'Pineapple',
        '1 kg pack',
        'Organic,Pesticide Free +2',
        'Rs 150',
        'Rs 100'),
    Product('https://pngimg.com/uploads/apple/apple_PNG12405.png', 'ONEFIELD',
        'Apple', '250 g pack', 'Organic,Pesticide Free +2', 'Rs 80', 'Rs 50')
  ];
  get newProduct {
    return productList;
  }

  List<GridProduct> gridproductList = [
    GridProduct(
        'http://clipart-library.com/images/8ixrRnKxT.jpg', 'Banana', 'Rs 50'),
    GridProduct(
        'http://www.freepngclipart.com/download/pineapple/1780-pineapple-png-images.jpg',
        'PineApple',
        'Rs 100'),
    GridProduct(
        'https://st.depositphotos.com/1642482/3698/i/950/depositphotos_36983317-stock-photo-mango.jpg',
        'Mango',
        'RS 80'),
    GridProduct(
        'https://images.all-free-download.com/images/graphiclarge/orange_fruit_vitamins_263334.jpg',
        'Orange',
        'Rs 50')
  ];
  get newGridProduct {
    return gridproductList;
  }
}
