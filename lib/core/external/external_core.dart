import 'package:flutter_template/core/core.dart';

class ExternalCore extends BaseExternalCore {
  Future<ExternalCore> doRequest(
    String endpoint, {
    MethodsExternalCore method = MethodsExternalCore.get,
    dynamic body,
  }) async {
    try {
      super.endpoint = endpoint;
      super.method = method;

      final result = await client.request<dynamic>(
        super.endpoint,
        options: makeOptions(),
      );

      print(result);

      return this;
    } catch (e) {
      return this;
    }
  }
}
