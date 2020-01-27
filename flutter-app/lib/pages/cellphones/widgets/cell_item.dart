import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product.dart';

class CellItem extends StatelessWidget {
  final Product cellphone;

  CellItem(this.cellphone);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[Text(cellphone.name)],
    );
  }
}
