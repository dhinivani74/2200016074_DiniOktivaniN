import 'package:flutter/material.dart';
import 'colors.dart';

class PayNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('PAY NOW'),
        style: ElevatedButton.styleFrom(primary: AppColors.primaryColor),
      ),
    );
  }
}
