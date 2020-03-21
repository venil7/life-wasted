import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesWrapper extends InheritedWidget {
  final Widget child;
  final DateTime dob;
  PreferencesWrapper({this.child, this.dob});

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}

class PreferencesContext extends StatefulWidget {
  final Widget child;
  PreferencesContext({this.child});

  @override
  State<PreferencesContext> createState() => _PreferencesContext();
}

class _PreferencesContext extends State<PreferencesContext> {
  DateTime dob;
  void readDob() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final dobSerialized = prefs.getString('dob');
    if (dobSerialized != null) {
      final _dob = DateTime.parse(dobSerialized);
      this.setState(() => this.dob = _dob);
    }
  }

  @override
  void initState() {
    super.initState();
    readDob();
  }

  @override
  Widget build(BuildContext context) {
    return (dob != null)
        ? Center(child: Text('some text'))
        // ? PreferencesWrapper(
        //     dob: dob,
        //     child: widget.child,
        //   )
        : Scaffold(
            body: SafeArea(
              minimum: EdgeInsets.all(20),
              child: DatePickerWidget(
                  onConfirm: (dob, _) => this.setState(() => this.dob = dob)),
            ),
          );
  }
}
