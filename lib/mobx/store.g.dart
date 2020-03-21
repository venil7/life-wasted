// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on MainStoreBase, Store {
  final _$dobAtom = Atom(name: 'MainStoreBase.dob');

  @override
  DateTime get dob {
    _$dobAtom.context.enforceReadPolicy(_$dobAtom);
    _$dobAtom.reportObserved();
    return super.dob;
  }

  @override
  set dob(DateTime value) {
    _$dobAtom.context.conditionallyRunInAction(() {
      super.dob = value;
      _$dobAtom.reportChanged();
    }, _$dobAtom, name: '${_$dobAtom.name}_set');
  }

  final _$userAgeAtom = Atom(name: 'MainStoreBase.userAge');

  @override
  UserAge get userAge {
    _$userAgeAtom.context.enforceReadPolicy(_$userAgeAtom);
    _$userAgeAtom.reportObserved();
    return super.userAge;
  }

  @override
  set userAge(UserAge value) {
    _$userAgeAtom.context.conditionallyRunInAction(() {
      super.userAge = value;
      _$userAgeAtom.reportChanged();
    }, _$userAgeAtom, name: '${_$userAgeAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'dob: ${dob.toString()},userAge: ${userAge.toString()}';
    return '{$string}';
  }
}
