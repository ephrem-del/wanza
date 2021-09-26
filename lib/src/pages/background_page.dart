import 'package:flutter/material.dart';
import 'package:wanza/src/contents/wanza.dart';
import 'package:wanza/src/widgets/list_item_widget.dart';

class BackgroundPage extends StatelessWidget {
  BackgroundPage({Key? key}) : super(key: key);
  static const routeName = '/backgroundPage';

  List<String> _groups = midroc_groups;

  @override
  Widget build(BuildContext context) {
    List<Widget> _groupWidgets = [];
    for (int i = 0; i < _groups.length; i++) {
      _groupWidgets.add(ListItem(content: _groups[i]));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Background'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'WANZA furnishing industry P.L.C. Background',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              background_1,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              background_2,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'The Groups include:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: _groupWidgets,
            )
          ],
        ),
      ),
    );
  }
}
