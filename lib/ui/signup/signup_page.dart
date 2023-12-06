import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class SingnupPage extends StatefulWidget {
  const SingnupPage({super.key});

  @override
  State<SingnupPage> createState() => _SingnupPageState();
}

class _SingnupPageState extends State<SingnupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50.0,
            left: 20.0,
            right: 20.0,
            child: Row(
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
                      015.0,
                    ),
                  ),
                  child: Icon(
                    Icons.close,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
