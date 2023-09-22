import 'package:flutter_template/core/core.dart';

class ExternalCore extends BaseExternalCore {
  Future<ExternalCore> doRequest(
    String endpoint, {
    MethodsExternalCore method = MethodsExternalCore.get,
    dynamic body,
    Map<String, dynamic> queryParameters = BaseExternalCore.defaultQueryParameters,
    bool isAuth = true,
    bool errorHandling = true,
    int? statusCodeExpected,
  }) async {
    try {
      super.endpoint = endpoint;
      super.method = method;
      super.isAuth = isAuth;
      super.errorHandling = errorHandling;
      super.statusCodeExpected = statusCodeExpected;

      await _doRequest();

      return this;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _doRequest() async {
    response = await client.request<dynamic>(
      super.endpoint,
      options: await makeOptions(),
    );
  }
}
