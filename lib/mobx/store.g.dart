// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on MainStoreBase, Store {
  Computed<int>? _$yearsTotalComputed;

  @override
  int get yearsTotal =>
      (_$yearsTotalComputed ??= Computed<int>(() => super.yearsTotal,
              name: 'MainStoreBase.yearsTotal'))
          .value;

  late final _$dobAtom = Atom(name: 'MainStoreBase.dob', context: context);

  @override
  DateTime get dob {
    _$dobAtom.reportRead();
    return super.dob;
  }

  @override
  set dob(DateTime value) {
    _$dobAtom.reportWrite(value, super.dob, () {
      super.dob = value;
    });
  }

  late final _$userAgeAtom =
      Atom(name: 'MainStoreBase.userAge', context: context);

  @override
  UserAge get userAge {
    _$userAgeAtom.reportRead();
    return super.userAge;
  }

  @override
  set userAge(UserAge value) {
    _$userAgeAtom.reportWrite(value, super.userAge, () {
      super.userAge = value;
    });
  }

  late final _$MainStoreBaseActionController =
      ActionController(name: 'MainStoreBase', context: context);

  @override
  void setUserAge(UserAge ua) {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.setUserAge');
    try {
      return super.setUserAge(ua);
    } finally {
      _$MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserDob(DateTime dob) {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.setUserDob');
    try {
      return super.setUserDob(dob);
    } finally {
      _$MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dob: ${dob},
userAge: ${userAge},
yearsTotal: ${yearsTotal}
    ''';
  }
}
