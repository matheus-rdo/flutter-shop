import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product.dart';

class CellItem extends StatelessWidget {
  final Product cellphone;

  CellItem(this.cellphone);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0.0),
        child: Column(
          children: <Widget>[
            Image.network(
              cellphone.img,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(cellphone.name),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                cellphone.brand,
                style: TextStyle(fontSize: 11, color: Colors.grey[600]),
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'R\$ ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('${cellphone.price.toStringAsFixed(2)}')
                    ],
                  ),
                  IconButton(
                    color: Colors.blue[600],
                    icon: Icon(Icons.add_shopping_cart),
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      print('add to kart');
                    },
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
