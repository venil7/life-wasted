import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:life_wasted/components/bottom_navigation.dart';
import 'package:life_wasted/util.dart';

part 'store.g.dart';

const DOB_KEY = 'dob';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  late SharedPreferences _prefs;

  @observable
  DateTime dob = DateTime.now().subtract(THRESHOLD.toYearsDuration);

  @observable
  UserAge userAge;

  MainStoreBase({this.userAge = UserAge.seventy}) {
    _init();
  }

  void _init() async {
    _prefs = await SharedPreferences.getInstance();
    final dobSerialized = _prefs.getString(DOB_KEY);
    if (dobSerialized != null) {
      final _dob = DateTime.parse(dobSerialized);
      this.setUserDob(_dob);
    }
  }

  @action
  void setUserAge(UserAge ua) => this.userAge = ua;

  @action
  void setUserDob(DateTime dob) {
    _prefs.setString(DOB_KEY, dob.toIso8601String());
    this.dob = dob;
  }

  @computed
  int get yearsTotal {
    switch (userAge) {
      case UserAge.fifty:
        return 50;
      case UserAge.seventy:
        return 70;
      case UserAge.ninety:
      default:
        return 90;
    }
  }
}
