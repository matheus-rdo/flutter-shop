import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_shop/pages/cellphones/widgets/cell_item.dart';
import 'package:flutter_shop/stores/cellphones/cellphones_store.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';
import 'package:flutter_shop/widgets/cart_bar_action.dart';
import 'package:flutter_shop/widgets/centered_progress_indicator.dart';

class CellPhonesPages extends StatefulWidget {
  @override
  _CellPhonesPagesState createState() => _CellPhonesPagesState();
}

class _CellPhonesPagesState extends State<CellPhonesPages> {
  final CellphoneStore cellStore = CellphoneStore();

  @override
  void initState() {
    super.initState();
    cellStore.fetchCellphones();
  }

  @override
  Widget build(BuildContext context) {
    print('Desenhando page cellphone');
    return Scaffold(
      appBar: AppBar(
        title: Text('Celulares'),
        actions: <Widget>[CartBarAction()],
      ),
      drawer: AppDrawer(),
      body: Container(
          child: Observer(
        builder: (_) => cellStore.cellphones != null
            ? GridView.builder(
                itemCount: cellStore.cellphones.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 2
                        : 3),
                itemBuilder: (_, index) {
                  final cellphone = cellStore.cellphones[index];
                  return CellItem(cellphone);
                },
              )
            : CenteredProgressIndicator(),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => cellStore.fetchCellphones(),
      ),
    );
  }
}
