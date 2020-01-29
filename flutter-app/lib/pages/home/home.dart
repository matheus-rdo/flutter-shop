import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_shop/pages/home/widgets/promotion_carousel_item.dart';
import 'package:flutter_shop/stores/home/home_store.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';
import 'package:flutter_shop/widgets/cart_bar_action.dart';
import 'package:flutter_shop/widgets/centered_progress_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeStore = HomeStore();

  @override
  void initState() {
    super.initState();
    homeStore.fetchPromotions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Shop'),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: <Widget>[CartBarAction()],
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.blue),
              child: Text(
                'Bem vindo ao Shopping do Flutter!',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.new_releases,
                    color: Colors.blue[500],
                    size: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Confira as últimas ofertas:',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Observer(
                    builder: (_) {
                      return homeStore.promotions != null
                          ? CarouselSlider.builder(
                              itemCount: homeStore.promotions.length,
                              height: 350.0,
                              itemBuilder: (_, int index) =>
                                  PromotionCarouselItem(
                                      homeStore.promotions[index]),
                            )
                          : CenteredProgressIndicator();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
