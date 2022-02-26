import 'package:fin_pocket/comman/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const TextStyle appBarTextStyle =
    TextStyle(color: buttonBlue, fontWeight: FontWeight.w600, fontSize: 24);
final TextStyle smallWhiteTextStyle =
    TextStyle(fontSize: 15, color: white, fontWeight: FontWeight.w700);
final TextStyle bigWhiteTextStyle =
    TextStyle(fontSize: 28, color: white, fontWeight: FontWeight.w700);
final TextStyle labelTextStyle =
    TextStyle(fontSize: 18, color: black, fontWeight: FontWeight.w700);

//--------textfield styles---------
final InputDecoration textfieldDecoration = InputDecoration(
  isDense: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: buttonGreen, width: 1),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: buttonGreen,
      width: 1,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: buttonGreen,
      width: 1,
    ),
  ),
);
