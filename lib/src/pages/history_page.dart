import 'package:flutter/material.dart';
import 'package:wanza/src/contents/wanza.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);
  static const routeName = '/historyPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History of the Company'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Brief History',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              history_1,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              history_2,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              history_3,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
