import 'package:alex_core/src/constant/alex_text_styles.dart';
import 'package:flutter/material.dart';

class SimpleHeader extends StatelessWidget {
  const SimpleHeader(
      {Key? key,
      required this.label,
      required this.child,
      required this.subtitle,
      this.radius,
      this.onTapAvatar,
      this.width,
      this.height,
      this.subtitleStyle,
      this.labelStyle})
      : super(key: key);

  final double? height;
  final double? width;
  final double? radius;
  final String label;
  final String subtitle;
  final Widget child;
  final TextStyle? labelStyle;
  final TextStyle? subtitleStyle;
  final Function? onTapAvatar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: labelStyle ?? MyTextStyles.h1),
            Text(
              subtitle,
              style: subtitleStyle ?? MyTextStyles.h2,
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        SizedBox(
          height: height,
          width: width,
          child: GestureDetector(
            onTap: () => (onTapAvatar ?? {}),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(radius ?? 20.0),
                child: child),
          ),
        )
      ],
    );
  }
}
