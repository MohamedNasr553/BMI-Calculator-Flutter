import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.blue,
  double height = 40.0,
  double radius = 0.0,
  bool isUpperCase = true,
  FontWeight fontWeight = FontWeight.normal,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: fontWeight,
            fontSize: 25.0,
          ),
        ),
      ),
    );

Widget defaultTextFormField({
  bool isPassword = false,
  ValueChanged<String>? onChange,
  VoidCallback? onTap,
  ValueChanged<String>? onFieldSubmitted,
  required String? Function(String?) validate,
  required TextEditingController controller,
  required TextInputType type,
  required String labelText,
  required IconData prefix,
  IconData? suffix,
  VoidCallback? suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: type,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      validator: validate,
      onChanged: onChange,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          prefix,
        ),
        suffix: (suffix != null)
            ? IconButton(
          icon: Icon(
            suffix,
          ),
          onPressed: suffixPressed,
        )
            : null,
        // border: OutlineInputBorder(),
      ),
    );

void navigateTo(context, widget)
=>
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(context,widget)
=>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
          builder: (context) =>widget
      ), (route) => false,
    );
