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
            ),
          ),
          Positioned(
            top: 150.0,
            left: 20.0,
            right: 20.0,
            child: SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(
                    10.0,
                  ),
                  child: Column(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontSize: 20.0,
                            height: 2.0,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Constants.primaryColor,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 15.0,
                            ),
                            label: Text(
                              'نام',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Constants.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontSize: 20.0,
                            height: 2.0,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Constants.primaryColor,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 15.0,
                            ),
                            label: Text(
                              'نام خانوادگی',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Constants.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontSize: 20.0,
                            height: 2.0,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Constants.primaryColor,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 15.0,
                            ),
                            label: Text(
                              'ایمیل',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Constants.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontSize: 20.0,
                            height: 2.0,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Constants.primaryColor,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 15.0,
                            ),
                            label: Text(
                              'پسورد',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Constants.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'ثبت نام',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'قبلا اکانت ساختی؟',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
