import 'package:stacked/stacked_annotations.dart';
import '../views/home_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    
  ],
  dependencies: [],
)
class App {}
