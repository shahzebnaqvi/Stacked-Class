import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int counter = 0;

  addCounterValue() {
    counter++;
    print(counter);
    rebuildUi();
  }
}
