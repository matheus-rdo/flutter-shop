import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';

class CellPhonesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celulares'),
      ),
      drawer: AppDrawer(),
      body: Container(
        child: Center(
          child: Text('Celulares'),
        ),
      ),
    );
  }
}
