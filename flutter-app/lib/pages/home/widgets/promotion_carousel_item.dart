import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product.dart';

class PromotionCarouselItem extends StatelessWidget {
  final Product product;

  PromotionCarouselItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: <Widget>[
              Text(
                product.name,
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Image.network(product.img),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'R\$ ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('${product.price.toStringAsFixed(2)}')
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
