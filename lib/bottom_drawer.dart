import 'package:flutter/material.dart';
import 'colors.dart';

class PayNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('PAY NOW'),
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.background),
      ),
    );
  }
}
