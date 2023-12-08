import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class CustomFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final Object? initialValue;
  final Function(String)? onChanged;
  final TextDirection textDirection;
  final String lastName;
  const CustomFormField({
    super.key,
    required this.validator,
    required this.initialValue,
    required this.onChanged,
    required this.textDirection,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection,
      child: TextFormField(
        initialValue: initialValue != null ? initialValue.toString() : '',
        onChanged: onChanged,
        cursorColor: Constants.primaryColor,
        style: const TextStyle(
          fontSize: 20.0,
          height: 2.0,
        ),
        decoration: InputDecoration(
          hintTextDirection: TextDirection.rtl,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Constants.primaryColor,
              width: 1.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
          label: Text(
            lastName,
            style: TextStyle(
              fontSize: 20.0,
              color: Constants.primaryColor,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
