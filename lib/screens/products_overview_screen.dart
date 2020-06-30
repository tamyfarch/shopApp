import 'package:flutter/material.dart';
import 'package:shopapp/models/products.dart';
import 'package:shopapp/widgets/product_items.dart';

class ProductsOverview extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id:'yummy',
      title:'YUM',
      description: 'A yummy food',
      price: 30.99,
      imageUrl: 'https://assets.tonica.la/__export/1578068379712/sites/debate/img/2020/01/03/justin_bieber_yummy.jpeg_1359985867.jpeg'
    ),
    Product(
      id:'yummy2',
      title:'YUM2',
      description: 'A yummy food',
      price: 30.99,
      imageUrl: 'https://assets.tonica.la/__export/1578068379712/sites/debate/img/2020/01/03/justin_bieber_yummy.jpeg_1359985867.jpeg'
    ),
    Product(
      id:'yummy3',
      title:'YUM3',
      description: 'A yummy food',
      price: 30.99,
      imageUrl: 'https://assets.tonica.la/__export/1578068379712/sites/debate/img/2020/01/03/justin_bieber_yummy.jpeg_1359985867.jpeg'
    )
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id, 
          loadedProducts[i].title, 
          loadedProducts[i].imageUrl,
          ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
      ),
    );
  }
}