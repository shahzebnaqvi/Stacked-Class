import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.addCounterValue();
          },
        ),
        body: Center(
          child: Text(
            "${viewModel.counter}",
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
