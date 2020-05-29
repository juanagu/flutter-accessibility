import 'package:flutter/material.dart';

class StepperFromZeroToAccessible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Expanded(
      child: Stepper(
        steps: [],
      ),
    );
  }
}
