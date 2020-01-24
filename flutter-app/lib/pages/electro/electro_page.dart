import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';

class ElectroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eletrodomésticos'),
      ),
      drawer: AppDrawer(),
      body: Container(
        child: Center(
          child: Text('Eletrodomésticos'),
        ),
      ),
    );
  }
}
