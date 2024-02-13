import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyProductList();
//    throw UnimplementedError();
  }
}

/// The Product class represents a product.
class Product {
  late String name;
  late double price;

  Product(this.name, this.price);
}

/// The MyProductList class is a stateless widget in Dart.
class MyProductList extends StatelessWidget {
  const MyProductList({super.key});



  @override
  Widget build(BuildContext context) {

/// The line `List<Product> productList=[];` is declaring a variable named `productList` of type
/// `List<Product>`. It is initializing the list with an empty list literal `[]`. This means that
/// `productList` is an empty list that can hold objects of type `Product`.
  List<Product> productList=[]; 


    return const ListTile(
      tileColor: Colors.deepOrange,
      titleAlignment: ListTileTitleAlignment.center,
      leading: Icon(Icons.shopping_cart),
      title: Text(
        "Produkt Nr. ",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      trailing: Text("- ${productList.}"),
    );
  }
}

/// The main function is the entry point of a Dart program.
void main(){

  
  for (int i = 0; i < 4; i++) {
    productList.add(Product("$i", i*1.1));
    //** */ Product("$i", i*1.1);
  }


} 