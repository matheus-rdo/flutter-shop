import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_shop/pages/cellphones/widgets/cell_item.dart';
import 'package:flutter_shop/stores/cellphones/cellphones_store.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';
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
    cellStore.fetchElectros();
  }

  @override
  Widget build(BuildContext context) {
    print('Desenhando page cellphone');
    return Scaffold(
      appBar: AppBar(
        title: Text('Celulares'),
      ),
      drawer: AppDrawer(),
      body: Container(
          child: Observer(
        builder: (_) => cellStore.cellphones != null
            ? ListView.builder(
                itemCount: cellStore.cellphones.length,
                itemBuilder: (_, index) {
                  final cellphone = cellStore.cellphones[index];
                  return CellItem(cellphone);
                },
              )
            : CenteredProgressIndicator(),
      )),
    );
  }
}
