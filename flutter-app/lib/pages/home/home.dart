import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Shop'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Container(
        child: Center(
          child: Text('Bem vindo ao Shopping do Flutter!',),
        ),
      ),
    );
  }
}
