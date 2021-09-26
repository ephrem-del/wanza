import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({required this.content, Key? key}) : super(key: key);
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_right),
          Expanded(
            child: Text(
              content,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
