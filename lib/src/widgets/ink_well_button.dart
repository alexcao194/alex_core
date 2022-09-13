import 'package:flutter/material.dart';

class InkWellButton extends StatelessWidget {
  const InkWellButton(
      {Key? key,
      this.radius,
      this.borderWidth,
      this.isActive,
      this.primaryColor,
      this.backgroundColor,
      this.width,
      this.height,
      this.child,
      this.onTap})
      : super(key: key);

  final Color? primaryColor;
  final Color? backgroundColor;
  final double? borderWidth;
  final double? radius;
  final double? height;
  final double? width;
  final bool? isActive;
  final VoidCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 20.0),
      child: Material(
        color: (isActive != null && isActive!)
            ? (primaryColor ?? Colors.white)
            : Colors.transparent,
        child: InkWell(
            splashColor: primaryColor ?? Colors.white,
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 20.0)),
                border: Border.all(
                    color: primaryColor ?? Colors.white,
                    width: borderWidth ?? 1.5),
              ),
              height: height,
              width: width,
              child: Center(child: child),
            )),
      ),
    );
  }
}



