import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class AppBarC extends StatelessWidget {
  const AppBarC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              50.0,
            ),
            color: Constants.primaryColor.withOpacity(
              0.15,
            ),
          ),
          child: Icon(
            Icons.close,
            color: Constants.primaryColor,
          ),
        ),
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              50.0,
            ),
            color: Constants.primaryColor.withOpacity(
              0.15,
            ),
          ),
          child: Icon(
            Icons.share,
            color: Constants.primaryColor,
          ),
        ),
      ],
    );
  }
}
