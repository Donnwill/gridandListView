import 'package:flutter/material.dart';
import '../model/newModel.dart';

class XyzHomePage extends StatelessWidget {
  Product product;
  XyzHomePage(this.product);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: Image.network(
          product.url,
          width: 100,
          height: 100,
        ),
        title: Text(product.onefield),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.pname,
            ),
            Text(product.weight),
            Text(product.info),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.mrp),
                Text(product.newprice),
                RaisedButton(
                  child: Text('Add  +'),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
