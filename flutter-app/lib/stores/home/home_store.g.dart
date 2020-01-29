// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$promotionsAtom = Atom(name: '_HomeStoreBase.promotions');

  @override
  List<Product> get promotions {
    _$promotionsAtom.context.enforceReadPolicy(_$promotionsAtom);
    _$promotionsAtom.reportObserved();
    return super.promotions;
  }

  @override
  set promotions(List<Product> value) {
    _$promotionsAtom.context.conditionallyRunInAction(() {
      super.promotions = value;
      _$promotionsAtom.reportChanged();
    }, _$promotionsAtom, name: '${_$promotionsAtom.name}_set');
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  dynamic fetchPromotions() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.fetchPromotions();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
