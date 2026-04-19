import 'package:flutter/material.dart';

class AppTimelineStepper extends StatelessWidget {
  final int totalSteps;
  final int activeStep;
  final List<String> labels;

  const AppTimelineStepper({
    super.key, 
    required this.totalSteps, 
    required this.activeStep,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps, (index) {
        bool isCompleted = index < activeStep;
        bool isActive = index == activeStep;

        return Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  // Line before the circle
                  Expanded(child: Divider(color: index == 0 ? Colors.transparent : (isCompleted ? Colors.blue : Colors.grey))),
                  // The Circle
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCompleted || isActive ? Colors.blue : Colors.white,
                      border: Border.all(color: isCompleted || isActive ? Colors.blue : Colors.grey),
                    ),
                    child: Center(
                      child: isCompleted 
                        ? const Icon(Icons.check, size: 14, color: Colors.white)
                        : Text("${index + 1}", style: TextStyle(fontSize: 12, color: isActive ? Colors.white : Colors.grey)),
                    ),
                  ),
                  // Line after the circle
                  Expanded(child: Divider(color: index == totalSteps - 1 ? Colors.transparent : (index < activeStep ? Colors.blue : Colors.grey))),
                ],
              ),
              const SizedBox(height: 4),
              Text(labels[index], style: const TextStyle(fontSize: 10)),
            ],
          ),
        );
      }),
    );
  }
}