import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/api/api_service.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/models/woocomers/resister_model.dart';

class SingnupPage extends StatefulWidget {
  const SingnupPage({super.key});

  @override
  State<SingnupPage> createState() => _SingnupPageState();
}

class _SingnupPageState extends State<SingnupPage> {
  late APIService apiService;
  late CustomerModel customerModel;
  bool isApiCalled = false;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  void initState() {
    apiService = APIService();
    customerModel = CustomerModel();
    super.initState();
  }

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
              child: Form(
                key: globalKey,
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
                            initialValue: customerModel.firsName,
                            onChanged: (value) {
                              customerModel.firsName = value;
                            },
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
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'این فرم باید پر شورد';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            initialValue: customerModel.lastName,
                            onChanged: (value) {
                              customerModel.lastName = value;
                            },
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
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'این فرم باید پر شورد';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            initialValue: customerModel.email,
                            onChanged: (value) {
                              customerModel.email = value;
                            },
                            cursorColor: Constants.primaryColor,
                            style: const TextStyle(
                              fontSize: 20.0,
                              height: 2.0,
                            ),
                            textDirection: TextDirection.ltr,
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
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'این فرم باید پر شورد';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            initialValue: customerModel.password,
                            onChanged: (value) {
                              customerModel.password = value;
                            },
                            textDirection: TextDirection.ltr,
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
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'این فرم باید پر شورد';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0,
                                  vertical: 10.0,
                                ),
                              ),
                              onPressed: () {
                                if (globalKey.currentState!.validate()) {
                                  debugPrint(
                                    '${customerModel.toJson()}',
                                  );
                                  setState(
                                    () {
                                      isApiCalled = true;
                                    },
                                  );
                                  apiService.createCustomer(customerModel).then(
                                    (bool retRes) {
                                      setState(
                                        () {
                                          isApiCalled = true;
                                        },
                                      );
                                      if (retRes) {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                'Woocommerce app',
                                              ),
                                              content: Text(
                                                'RegisTration uccessfull',
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'Ok',
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                'Woocommerce app',
                                              ),
                                              content: Text(
                                                'Email Alredy Resistered',
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'Ok',
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                  );
                                }
                              },
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
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0,
                                  vertical: 10.0,
                                ),
                              ),
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
                        SizedBox(
                          height: 30.0,
                        ),
                        isApiCalled
                            ? Text(
                                'لطفا منتظر بمانید',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            : Text(
                                '',
                              ),
                      ],
                    ),
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
