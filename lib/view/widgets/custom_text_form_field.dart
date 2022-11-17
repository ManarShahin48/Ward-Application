import 'package:flutter/material.dart';
import 'package:ward/view/widgets/custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.text,
    required this.hint,
    required this.onSave,
    required this.validator,
  }) : super(key: key);

  final String text;
  final String hint;
  final Function(String?) onSave;
  final String Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          fontSize: 14,
          color: Colors.grey.shade900,
        ),
        TextFormField(
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.white,
          ),
        )
      ],
    );
  }
}
