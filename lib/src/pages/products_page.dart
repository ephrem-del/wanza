import 'package:flutter/material.dart';
import 'package:wanza/src/contents/wanza.dart';
import 'package:wanza/src/widgets/list_item_widget.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);
  static const routeName = '/productsPage';
  List<String> _products = products;
  @override
  Widget build(BuildContext context) {
    List<Widget> _productsWidget = [];
    for (int i = 0; i < _products.length; i++) {
      _productsWidget.add(
        ListItem(content: _products[i]),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Main products of the Industry',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: _productsWidget,
            )
          ],
        ),
      ),
    );
  }
}
