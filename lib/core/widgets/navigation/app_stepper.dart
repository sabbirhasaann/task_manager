import 'package:flutter/material.dart';

class AppStepper extends StatelessWidget {
  final int currentStep;
  final List<Step> steps;
  final Function(int) onStepContinue;
  final Function(int) onStepCancel;
  final Function(int)? onStepTapped;
  final bool isVertical;

  const AppStepper({
    super.key,
    required this.currentStep,
    required this.steps,
    required this.onStepContinue,
    required this.onStepCancel,
    this.onStepTapped,
    this.isVertical = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: isVertical ? StepperType.vertical : StepperType.horizontal,
      currentStep: currentStep,
      onStepContinue: () => onStepContinue(currentStep),
      onStepCancel: () => onStepCancel(currentStep),
      onStepTapped: onStepTapped,
      steps: steps,
      // Customizing the controls (Buttons at the bottom of each step)
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              FilledButton(
                onPressed: details.onStepContinue,
                child: Text(currentStep == steps.length - 1 ? 'FINISH' : 'NEXT'),
              ),
              const SizedBox(width: 12),
              if (currentStep > 0)
                OutlinedButton(
                  onPressed: details.onStepCancel,
                  child: const Text('PREVIOUS'),
                ),
            ],
          ),
        );
      },
    );
  }
}