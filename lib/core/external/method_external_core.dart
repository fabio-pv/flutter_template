enum MethodsExternalCore {
  get,
  post,
  patch,
  put,
  delete,
}

class MethodExternalCore {
  final _methods = <MethodsExternalCore, String>{
    MethodsExternalCore.get: 'GET',
    MethodsExternalCore.post: 'POST',
    MethodsExternalCore.patch: 'PATCH',
    MethodsExternalCore.put: 'PUT',
    MethodsExternalCore.delete: 'DELETE',
  };

  String get(MethodsExternalCore method) {
    return _methods[method] ?? 'mehtod_not_allow';
  }
}
