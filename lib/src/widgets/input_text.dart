import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText(
      {Key? key,
      required this.label,
      this.radius,
      this.height,
      this.obscureText,
      this.cursorColor,
      this.textInputType,
      this.controller,
      this.enable})
      : super(key: key);

  final bool? obscureText;
  final bool? enable;
  final String label;
  final double? height;
  final double? radius;
  final Color? cursorColor;
  final TextInputType? textInputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 10),
          color: const Color.fromARGB(100, 215, 215, 215)),
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText ?? false,
                  decoration: InputDecoration.collapsed(hintText: label),
                  cursorColor: cursorColor ?? ThemeData().primaryColor,
                  enabled: enable ?? true,
                  keyboardType: textInputType,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
