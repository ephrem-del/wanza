import 'package:flutter/material.dart';
import 'package:wanza/src/widgets/list_item_widget.dart';
import '../contents/wanza.dart';

class CustomersPage extends StatelessWidget {
  CustomersPage({Key? key}) : super(key: key);
  static const routeName = '/customersPage';
  List<String> _customers = customers;

  @override
  Widget build(BuildContext context) {
    List<Widget> _customersWidget = [];
    for (int i = 0; i < _customers.length; i++) {
      _customersWidget.add(
        ListItem(content: _customers[i]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Customers'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Usually the main customers of the industry can be classified into three',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: _customersWidget,
            )
          ],
        ),
      ),
    );
  }
}
