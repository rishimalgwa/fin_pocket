import 'package:fin_pocket/comman/styles.dart';
import 'package:fin_pocket/comman/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      this.color,
      this.radius,
      required this.onPressed})
      : super(key: key);
  final String text;
  final Color? color;
  final double? radius;
  final Function()? onPressed;
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 10)),
        minWidth: double.infinity,
        height: 50,
        color: color ?? buttonBlue,
        child: Text(
          text,
          style: labelTextStyle.copyWith(color: white),
        ),
        onPressed: onPressed);
  }
}
