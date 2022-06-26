import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import '../api/api_keys.dart' as api_keys;
import '../general_exports.dart';

class ApiRequest {
  ApiRequest({
    @required this.path,
    @required this.method,
    @required this.className,
    this.body,
    this.queryParameters,
    this.formatResponse = false,
    this.withLoading = false,
    this.includeToken = true,
    this.shouldShowMessage = true,
    this.baseUrl = api_keys.baseUrlFull,
  });

  final MyAppController _myAppController = Get.find<MyAppController>();
  final String? path;
  final String? method;
  final String? className;
  final bool includeToken;

  String authorization() => _myAppController.userData != null
      ? 'Bearer ${_myAppController.userData['accessToken']}'
      : '';
  final bool withLoading;
  final String baseUrl;
  final bool formatResponse;
  final bool shouldShowMessage;
  final dynamic body;
  final dynamic queryParameters;
  dynamic response;

  Dio _dio() {
    // Put your authorization token here
    final Dio dio = Dio(
      BaseOptions(
        headers: getHeaders(
          includeToken: includeToken,
        ),
      ),
    );
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    return dio;
  }

  Future<void> request({
    Function()? beforeSend,
    Function(dynamic data, dynamic response)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    // start request time
    final DateTime startTime = DateTime.now();

    try {
      if (withLoading) {
        startLoading();
      }
      // check method type
      switch (method) {
        case getMethod:
          response = await _dio()
              .get(baseUrl + path!, queryParameters: queryParameters);

          break;
        case postMethod:
          response = await _dio().post(
            baseUrl + path!,
            data: body,
            queryParameters: queryParameters,
          );
          break;
        case putMethod:
          response = await _dio().put(
            baseUrl + path!,
            data: body,
            queryParameters: queryParameters,
          );
          break;
        case deleteMethod:
          response = await _dio().delete(
            baseUrl + path!,
            data: body,
            queryParameters: queryParameters,
          );
          break;
      }
      // request time
      final int time = DateTime.now().difference(startTime).inMilliseconds;
      // print response data in console
      showRequestDetails(
        method: method,
        path: path,
        fullPath: baseUrl + path!,
        formatResponse: formatResponse,
        className: className,
        body: body.toString(),
        headers: _dio().options.headers,
        queryParameters: queryParameters.toString(),
        response: response.data,
        time: time,
      );

      if (withLoading) {
        dismissLoading();
      }

      if (onSuccess != null) {
        onSuccess(response.data['result'], response.data);
      }
    } on Exception catch (error) {
      dismissLoading();
      // request time
      final int time = DateTime.now().difference(startTime).inMilliseconds;
      if (error is DioError) {
        consoleLog(error.message);
        final dynamic errorData = error.response?.data ??
            <String, dynamic>{
              'error': <String, String>{
                'message': 'Un handled error',
              },
            };
        // print response error
        showRequestDetails(
          method: method,
          path: path,
          fullPath: baseUrl + path!,
          formatResponse: formatResponse,
          className: className,
          body: body.toString(),
          headers: _dio().options.headers,
          queryParameters: queryParameters.toString(),
          response: errorData,
          time: time,
          isError: true,
        );

        //handle DioError here by error type or by error code
        if (shouldShowMessage) {
          consoleLog(error);
          showMessage(
            description:
                errorData['error'] != null && errorData['error'].length > 0
                    ? errorData['error']['message']
                    : errorData['message'],
            textColor: COMMON_RED_COLOR,
          );
        }

        if (onError != null) {
          onError(errorData);
        }
        if (error.response!.statusCode == 401) {
          if (path!.contains(apiAuthenticate)) {
            return;
          }
          Get.find<MyAppController>().onSignOut();
          Get.offAllNamed(
            routeHome,
          );
        }
      } else {
        // handle another errors
        showRequestDetails(
          method: method,
          path: path,
          fullPath: baseUrl + path!,
          formatResponse: formatResponse,
          className: className,
          body: body.toString(),
          headers: _dio().options.headers,
          queryParameters: queryParameters.toString(),
          response: error,
          time: time,
          isError: true,
          otherCatch: true,
        );
      }
    }
  }
}

Map<String, String> getHeaders({bool includeToken = true}) {
  String appLocale = Get.find<AppLanguageController>().appLocale;
  if (appLocale == 'ar') {
    appLocale = 'ar-EG';
  }
  final MyAppController myAppController = Get.find<MyAppController>();
  return <String, String>{
    'Authorization': (myAppController.userData != null && includeToken)
        ? 'Bearer ${myAppController.userData['accessToken']}'
        : '',
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Accept-Language': appLocale,
    '.AspNetCore.Culture': appLocale,
  };
}
