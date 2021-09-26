import 'package:flutter/material.dart';
import 'package:wanza/src/contents/wanza.dart';
import 'package:wanza/src/widgets/list_item_widget.dart';

class MissionAndVision extends StatelessWidget {
  const MissionAndVision({Key? key}) : super(key: key);
  static const routeName = '/missionAndVision';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mission & Vision'),
          centerTitle: true,
        ),
        body: ListView(
          children: [Mission(), Vision(), Value()],
        ));
  }
}

class Mission extends StatelessWidget {
  Mission({Key? key}) : super(key: key);
  String _mission = mission;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Misssion',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 5,
          ),
          ListItem(content: _mission)
        ],
      ),
    );
  }
}

class Vision extends StatelessWidget {
  Vision({Key? key}) : super(key: key);
  List<String> _visions = vision;
  @override
  Widget build(BuildContext context) {
    List<Widget> _visionWidget = [];
    for (int i = 0; i < _visions.length; i++) {
      _visionWidget.add(ListItem(content: _visions[i]));
    }

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vision',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: _visionWidget,
          )
        ],
      ),
    );
  }
}

class Value extends StatelessWidget {
  Value({Key? key}) : super(key: key);
  List<String> _values = value;
  @override
  Widget build(BuildContext context) {
    List<Widget> _valueWidget = [];
    for (int i = 0; i < _values.length; i++) {
      _valueWidget.add(ListItem(content: _values[i]));
    }

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Values',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: _valueWidget,
          )
        ],
      ),
    );
  }
}
