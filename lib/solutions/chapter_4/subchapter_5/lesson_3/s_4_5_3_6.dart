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
class MyProductList extends StatefulWidget {
  const MyProductList({super.key});

  @override
  State<MyProductList> createState() => _MyProductListState();
}

class _MyProductListState extends State<MyProductList> {
  @override
  Widget build(BuildContext context) {
    List<Product> productList = []; // Liste von Produkten

    /// The `for` loop is iterating over a range of numbers from 0 to 4 (inclusive). In each iteration, it
    /// creates a new product name and price based on the current index, and adds a new `Product` object to
    /// the `productList` list.
    for (int i = 0; i < 5; i++) {
      String productName = 'B-Product ${i + 1}';
      double productPrice = (i + 1) * 1.11; // Beispiel Preislogik
      productList.add(Product(productName, productPrice));
    }

    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        //Product product = productList[index];
        return ListTile(
          tileColor: Colors.deepOrange,
          titleAlignment: ListTileTitleAlignment.center,
          leading: const Icon(Icons.shopping_cart),
          /*leading:
            GestureDetector(onTap: () {
            setState(() {
              iconColor = Colors.red;
            });
          },) */
          iconColor: Colors.cyan,
          title: Text(
            productList[index].name,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
          ),
          trailing: Text(productList[index].price.toStringAsFixed(2)),
          textColor: Colors.white,
        );
      },
    );

    /* return  ListTile(
      tileColor: Colors.deepOrange,
      titleAlignment: ListTileTitleAlignment.center,
      leading: Icon(Icons.shopping_cart), iconColor: Colors.black54,
      title: Text(
        productList[index].name,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blue),
      ),
      trailing: Text(productList[index].price.toStringAsFixed(2)), textColor: Colors.white,
    ); */
  }
}
