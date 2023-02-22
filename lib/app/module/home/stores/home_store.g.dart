// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreStoreBase, Store {
  late final _$moneyAtom =
      Atom(name: 'HomeStoreStoreBase.money', context: context);

  @override
  int get money {
    _$moneyAtom.reportRead();
    return super.money;
  }

  @override
  set money(int value) {
    _$moneyAtom.reportWrite(value, super.money, () {
      super.money = value;
    });
  }

  @override
  String toString() {
    return '''
money: ${money}
    ''';
  }
}
