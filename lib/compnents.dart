import 'package:flutter/material.dart';

Widget myTextFormField({
  @required TextEditingController controller,
  @required FormFieldValidator<String> validator,
  TextInputAction inputAction = TextInputAction.next,
  TextInputType inputType = TextInputType.text,
  @required IconData prefixIcon,
  @required String label,
  bool obscureText = false,
  Widget suffixIcon
}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    validator: validator,
    textInputAction: inputAction,
    keyboardType: inputType,
    decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        labelText: label,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder()),
  );
}
