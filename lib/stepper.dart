import 'package:flutter/material.dart';

class NavegatorStapper extends StatefulWidget {
  const NavegatorStapper({super.key});

  @override
  State<NavegatorStapper> createState() => _NavegacaoStepper();
}

class _NavegacaoStepper extends State<NavegatorStapper> {
  var _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("Steppeer")),
        body: Stepper(
          type: StepperType.vertical,
          currentStep: _currentStep,
          onStepContinue:
              _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
          steps: [
            Step(
                title: Text("Get Ready"),
                isActive: true,
                content: Text("Let's begin")),
            Step(
                title: Text("Get Set"),
                isActive: true,
                content: Text("Ok, just a litter more...")),
            Step(
                title: Text("Go!"),
                isActive: true,
                content: Text("We're done!"))
          ],
        ),
      ),
    );
  }
}
