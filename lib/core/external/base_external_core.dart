import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/core.dart';

abstract class BaseExternalCore {
  @protected
  final client = Dio(
    BaseOptions(
      baseUrl: 'http://calapi.inadiutorium.cz/api/v0/en/',
    ),
  );

  late String endpoint;
  late MethodsExternalCore method;

  @protected
  Options makeOptions() {
    return Options(
      method: MethodExternalCore().get(method),
      followRedirects: false,
      validateStatus: (int? status) {
        return true;
      },
    );
  }
}
