import 'package:dio/dio.dart';

class Httpervice {
  var _dio = Dio();
  final baseUrl = "https://reqres.in/";

  Httpervice() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
     // initalizeInterceptor();
  }

  Future<Response>getRequest(String endpoint)async{
    return _dio.get(endpoint);
  }

  initalizeInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(
        onError: (error, errorInterceptorHandler) {
      print(error.message);
    },
        onRequest: (request, requestInterceptorHandler) {
      print("${request.method} ${request.path}");
    },
        onResponse: (response, responseInterceptorHandler) {
      print(response.data);
    }));
  }
}
