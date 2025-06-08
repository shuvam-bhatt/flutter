import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {

  int days = 30;
  String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
        title: Text("Catalog App", style: TextStyle(color: Colors.white),),
      ),
        body: Center(
          child: Container(
            child: Text('Welcome $days, by $name'
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}