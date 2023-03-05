import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/services/counter_service.dart';

import '../app/app.locator.dart';
import '../app/app.router.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  addValue() {
    counterService.increamentValue();
    rebuildUi();
  }

  navigateToHome() {
    _navigationService.navigateToHomeView();
  }
}
