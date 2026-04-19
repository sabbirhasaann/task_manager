import 'package:flutter/material.dart';

class AppBreadcrumbs extends StatelessWidget {
  final List<String> path;
  final Function(int) onStepTap;

  const AppBreadcrumbs({super.key, required this.path, required this.onStepTap});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: List.generate(path.length, (index) {
        final isLast = index == path.length - 1;
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () => onStepTap(index),
              child: Text(
                path[index],
                style: TextStyle(
                  color: isLast ? Colors.black : Colors.blue,
                  fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
            if (!isLast) const Icon(Icons.chevron_right, size: 16, color: Colors.grey),
          ],
        );
      }),
    );
  }
}