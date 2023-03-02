import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class NumberListProvider extends ChangeNotifier {
  List<int> numbers = [
    1,
    2,
  ];

  void add() {
    int last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }
}
