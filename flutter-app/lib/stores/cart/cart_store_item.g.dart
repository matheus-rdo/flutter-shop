// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store_item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStoreItem on _CartStoreItemBase, Store {
  Computed<double> _$totalComputed;

  @override
  double get total =>
      (_$totalComputed ??= Computed<double>(() => super.total)).value;

  final _$productAtom = Atom(name: '_CartStoreItemBase.product');

  @override
  Product get product {
    _$productAtom.context.enforceReadPolicy(_$productAtom);
    _$productAtom.reportObserved();
    return super.product;
  }

  @override
  set product(Product value) {
    _$productAtom.context.conditionallyRunInAction(() {
      super.product = value;
      _$productAtom.reportChanged();
    }, _$productAtom, name: '${_$productAtom.name}_set');
  }

  final _$quantityAtom = Atom(name: '_CartStoreItemBase.quantity');

  @override
  int get quantity {
    _$quantityAtom.context.enforceReadPolicy(_$quantityAtom);
    _$quantityAtom.reportObserved();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.context.conditionallyRunInAction(() {
      super.quantity = value;
      _$quantityAtom.reportChanged();
    }, _$quantityAtom, name: '${_$quantityAtom.name}_set');
  }

  final _$_CartStoreItemBaseActionController =
      ActionController(name: '_CartStoreItemBase');

  @override
  dynamic add({int amount = 1}) {
    final _$actionInfo = _$_CartStoreItemBaseActionController.startAction();
    try {
      return super.add(amount: amount);
    } finally {
      _$_CartStoreItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remove({int amount = 1}) {
    final _$actionInfo = _$_CartStoreItemBaseActionController.startAction();
    try {
      return super.remove(amount: amount);
    } finally {
      _$_CartStoreItemBaseActionController.endAction(_$actionInfo);
    }
  }
}
