import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';
class ProductOverviewScreen extends StatelessWidget {
  final List<Product>loadedProduct=[
    Product(
        id:'p1',
        title:'Red shirt',
        description:'A red shirt - it is pretty red!',
        price:30.99,
        imageUrl:'https://www.odsdesignerclothing.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/8/9874.jpg'
    ),
    Product(
        id:'p2',
        title:'white shirt',
        description:'A ehite shirt - it is pretty white!',
        price:40.99,
        imageUrl:'https://www.giglio.com/images/prodPage/A26275.001_1.jpg'
    ),
    Product(
        id:'p3',
        title:'Red shirt',
        description:'A red shirt - it is pretty red!',
        price:100.99,
        imageUrl:'https://www.odsdesignerclothing.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/8/9874.jpg'
    ),
    Product(
        id:'p4',
        title:'green shirt',
        description:'A green shirt - it is pretty green!',
        price:20.99,
        imageUrl:'https://intoto7.co.uk/wp-content/uploads/2019/04/DSQUARED-T-SHIRT-MENS-GOLD-PRINT-WHITE.jpg'
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("myshop"),
      ),
    body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProduct.length,
         //how many items should view
         itemBuilder: (ctx,i)=>Container(),
        //how many Column should have
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
    ),
    );
  }
}
