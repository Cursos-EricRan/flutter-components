import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String formProperty;
  final Map<String, dynamic> formValues;

  final String labelText;
  final String? counterText;
  final String? helperText;
  final String? hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final Icon? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.counterText,
    this.helperText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  // Variables
  // String inputValue = '';
  // void _showToast(BuildContext context, String inputValue) {
  //   if (inputValue == '' || inputValue == ' ') return;
  //   ScaffoldMessenger.of(context).hideCurrentSnackBar();
  //   final scaffold = ScaffoldMessenger.of(context);
  //   scaffold.showSnackBar(
  //     SnackBar(
  //       content: Text(inputValue),
  //       action: SnackBarAction(
  //         label: 'UNDO',
  //         onPressed: scaffold.hideCurrentSnackBar,
  //       ),
  //       duration: const Duration(milliseconds: 500),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      autofocus: true,
      initialValue: '',
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) =>
          formValues[formProperty] = value, // _showToast(context, value),
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        counterText: counterText,
        helperText: helperText,
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        icon: icon,
      ),
    );
  }
}
