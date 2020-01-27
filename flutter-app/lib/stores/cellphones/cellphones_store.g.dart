// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cellphones_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CellphoneStore on _CellphoneStoreBase, Store {
  final _$cellphonesAtom = Atom(name: '_CellphoneStoreBase.cellphones');

  @override
  List<Product> get cellphones {
    _$cellphonesAtom.context.enforceReadPolicy(_$cellphonesAtom);
    _$cellphonesAtom.reportObserved();
    return super.cellphones;
  }

  @override
  set cellphones(List<Product> value) {
    _$cellphonesAtom.context.conditionallyRunInAction(() {
      super.cellphones = value;
      _$cellphonesAtom.reportChanged();
    }, _$cellphonesAtom, name: '${_$cellphonesAtom.name}_set');
  }

  final _$_CellphoneStoreBaseActionController =
      ActionController(name: '_CellphoneStoreBase');

  @override
  dynamic fetchElectros() {
    final _$actionInfo = _$_CellphoneStoreBaseActionController.startAction();
    try {
      return super.fetchElectros();
    } finally {
      _$_CellphoneStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
