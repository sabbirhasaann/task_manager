import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatefulWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextInputType keyboardType;
  final bool isPassword;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool isEnabled;
  final int maxLines;
  final List<TextInputFormatter>? formatters;
  final AutovalidateMode autovalidateMode;

  const AppTextFormField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.validator,
    this.onSaved,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.isEnabled = true,
    this.maxLines = 1,
    this.formatters,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          const SizedBox(height: 8),
          TextFormField(
            controller: widget.controller,
            validator: widget.validator,
            onSaved: widget.onSaved,
            obscureText: widget.isPassword ? _obscureText : false,
            keyboardType: widget.keyboardType,
            enabled: widget.isEnabled,
            maxLines: widget.maxLines,
            inputFormatters: widget.formatters,
            autovalidateMode: widget.autovalidateMode,
            decoration: InputDecoration(
              hintText: widget.hint,
              prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
              suffixIcon: widget.isPassword 
                  ? IconButton(
                      icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                      onPressed: () => setState(() => _obscureText = !_obscureText),
                    ) 
                  : widget.suffixIcon,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              filled: !widget.isEnabled,
              fillColor: widget.isEnabled ? Colors.transparent : Colors.grey.shade100,
            ),
          ),
        ],
      ),
    );
  }
}