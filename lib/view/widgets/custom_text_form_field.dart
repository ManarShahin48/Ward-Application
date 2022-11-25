import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {Key? key,
      required this.text,
      required this.onSave,
      this.validator,
      this.obscureText = false,
      this.isPassword = false,
      this.suffixOnPressed,
      this.keyboardType = TextInputType.text,
      })
      : super(key: key);

  final String text;
  final bool obscureText;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Function(String?) onSave;
  final void Function()? suffixOnPressed;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: validator,
      keyboardType: keyboardType,
      cursorColor: ColorManager.primary,
      enableSuggestions: true,
      obscureText: obscureText,
      style: getCairoMediumStyle(
        color: ColorManager.black,
        fontSize: SizeManager.s20,
      ),
      decoration: InputDecoration(
        labelText: text,
        labelStyle: getCairoRegularStyle(
          color: ColorManager.grey,
          fontSize: SizeManager.s20,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: SizeManager.s3,
          ),
        ),
        hintStyle: getCairoRegularStyle(
          color: ColorManager.primary,
          fontSize: SizeManager.s30,
        ),
        fillColor: Colors.white,
        suffixIcon: isPassword
            ? IconButton(
                onPressed: suffixOnPressed,
                icon: Icon(
                  obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility,
                  color: ColorManager.primary,
                ),
              )
            : null,
      ),
    );
  }
}
