import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/models/woocomers/resister_model.dart';

class APIService {
  Future<bool> createCustomer(CustomerModel model) async {
    bool returnRespose = false;
    String authToken = base64.encode(
      utf8.encode(
        "${WoocommerceInfo.consumerKey}:${WoocommerceInfo.consumerSecret}",
      ),
    );
    try {
      var response = await Dio().post(
        WoocommerceInfo.baseUrlWooCommerce + WoocommerceInfo.customerURL,
        data: model.toJson(),
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: 'Basic$authToken',
            HttpHeaders.contentTypeHeader: 'application/json',
          },
        ),
      );
      if (response.statusCode == 201) {
        returnRespose = true;
      }
    } on DioException catch (e) {
      if (e.response!.statusCode == 404) {
        returnRespose = false;
      } else {
        returnRespose = false;
      }
    }
    return returnRespose;
  }
}
