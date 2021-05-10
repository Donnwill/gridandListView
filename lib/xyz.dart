import 'package:demo_app/homepage/gridHomePage.dart';
import 'package:demo_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'model/newModel.dart';
import 'homepage/homePage.dart';
import 'package:provider/provider.dart';
import 'model/gridModel.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> product = [];
  List<GridProduct> gridproduct = [];
  @override
  Widget build(BuildContext context) {
    setState(() {
      ExcecutionAreaProvider excecutionAreaProvider =
          Provider.of<ExcecutionAreaProvider>(context, listen: false);
      product = excecutionAreaProvider.newProduct;
      gridproduct = excecutionAreaProvider.gridproductList;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: GridView.builder(
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.1, crossAxisCount: 2),
                  itemCount: gridproduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return XyzGridHomePage(gridproduct[index]);
                  }),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 550,
              child: ListView.builder(
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  return XyzHomePage(product[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
