import 'package:demo_app/model/gridModel.dart';
import 'package:flutter/material.dart';

class XyzGridHomePage extends StatefulWidget {
  GridProduct gridProduct;
  XyzGridHomePage(this.gridProduct);
  @override
  _XyzGridHomePageState createState() => _XyzGridHomePageState();
}

class _XyzGridHomePageState extends State<XyzGridHomePage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Row(
        children: [
          Image.network(widget.gridProduct.url),
          Column(
            children: [
              Text(widget.gridProduct.name),
              Text(widget.gridProduct.price)
            ],
          ),
        ],
      ),
    );
  }
}
