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
  late bool isAuth;
  late bool errorHandling;

  int? statusCodeExpected;

  Response<dynamic>? response;

  static const defaultQueryParameters = <String, dynamic>{};

  @protected
  Future<Options> makeOptions() async {
    return Options(
      method: MethodExternalCore().get(method),
      followRedirects: false,
      validateStatus: (int? status) {
        return true;
      },
      headers: await _makeHeader(),
    );
  }

  Future<Map<String, dynamic>> _makeHeader() async {
    final header = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };

    if (isAuth) {
      header.addAll(
        <String, String>{
          'Authorization': '',
        },
      );
    }

    return header;
  }

  void checkError() {
    if (!errorHandling) {
      return;
    }

    if (response == null) {
      /*'try this type error'*/
      return;
    }

    if (response!.statusCode == statusCodeExpected) {
      return;
    }

    /*_tryMakeError();*/
  }

  T getModel<T>(void Function(Map<String, dynamic>) fromJson) {
    return fromJson(response!.data as Map<String, dynamic>) as T;
  }

  List<T> getModels<T>(
    // ignore: inference_failure_on_function_return_type
    Function(Map<String, dynamic>) fromJson,
  ) {
    final list = <T>[];
    for (final element in response!.data as List<dynamic>) {
      list.add(fromJson(element as Map<String, dynamic>) as T);
    }
    return list;
  }
}
