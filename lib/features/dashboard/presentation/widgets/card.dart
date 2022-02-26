import 'package:fin_pocket/comman/constants/constants.dart';
import 'package:fin_pocket/comman/theme/styles.dart';
import 'package:fin_pocket/comman/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: buttonBlue,
        ),
        title: Text(
          'HDFC Bank',
          style: smallWhiteTextStyle.copyWith(color: black),
        ),
        subtitle: Text(
          '5 shares',
          style: smallWhiteTextStyle.copyWith(color: grey, fontSize: 13),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              rupee + '1500',
              style: smallWhiteTextStyle.copyWith(color: black),
            ),
            Text(
              '+2%',
              style: smallWhiteTextStyle.copyWith(
                  color: buttonGreen, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
