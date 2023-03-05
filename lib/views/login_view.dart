import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../viewmodels/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.addValue();
          },
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToHome();
                    },
                    child: Text("Home")),
                Text(viewModel.counterService.abc.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
