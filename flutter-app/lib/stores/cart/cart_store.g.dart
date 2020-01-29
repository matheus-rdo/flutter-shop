// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStore on _CartStoreBase, Store {
  Computed<int> _$itemsLengthComputed;

  @override
  int get itemsLength =>
      (_$itemsLengthComputed ??= Computed<int>(() => super.itemsLength)).value;
  Computed<double> _$totalPriceComputed;

  @override
  double get totalPrice =>
      (_$totalPriceComputed ??= Computed<double>(() => super.totalPrice)).value;

  final _$itemsAtom = Atom(name: '_CartStoreBase.items');

  @override
  ObservableList<CartItem> get items {
    _$itemsAtom.context.enforceReadPolicy(_$itemsAtom);
    _$itemsAtom.reportObserved();
    return super.items;
  }

  @override
  set items(ObservableList<CartItem> value) {
    _$itemsAtom.context.conditionallyRunInAction(() {
      super.items = value;
      _$itemsAtom.reportChanged();
    }, _$itemsAtom, name: '${_$itemsAtom.name}_set');
  }

  final _$_CartStoreBaseActionController =
      ActionController(name: '_CartStoreBase');

  @override
  dynamic addProduct(Product product, {int quantity = 1}) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction();
    try {
      return super.addProduct(product, quantity: quantity);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remove(Product product) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction();
    try {
      return super.remove(product);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
