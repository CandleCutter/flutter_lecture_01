import 'package:flutter/cupertino.dart';

class NotifierViewModel with ChangeNotifier {
  static final NotifierViewModel _notifierViewModel =
      NotifierViewModel._singleton();

  factory NotifierViewModel() => _notifierViewModel;

  NotifierViewModel._singleton();

  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }
}
