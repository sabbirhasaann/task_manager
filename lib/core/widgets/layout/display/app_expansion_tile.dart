import 'package:flutter/material.dart';


class AppExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Widget? leading;

  const AppExpansionTile({
    super.key,
    required this.title,
    required this.children,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        leading: leading,
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        childrenPadding: const EdgeInsets.all(16),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        shape: const Border(), // Removes default lines
        children: children,
      ),
    );
  }
}