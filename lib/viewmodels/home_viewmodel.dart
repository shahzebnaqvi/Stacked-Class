import 'package:stacked/stacked.dart';
import 'package:stackedapp/app/app.locator.dart';

import '../services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();
}
