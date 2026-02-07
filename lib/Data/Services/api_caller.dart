import 'dart:convert';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class Apicaller {
  final Logger _logger = Logger();

  Future<ApiResponse> getRequest({required String url}) async {
    try {
      Uri uri = Uri.parse(url);
      _logrequest(url);

      Response response = await get(uri);
      _logresponse(url, response);


      final int statusCode = response.statusCode;

      if (response.statusCode == 200) {
        //success
        final decodeData = jsonDecode(response.body);
        return ApiResponse(
          isSuccess: true,
          responseCode: statusCode,
          responseData: decodeData,
        );
      } else {
        //Failed
        final decodeData = jsonDecode(response.body);
        return ApiResponse(
          isSuccess: false,
          responseCode: statusCode,
          responseData: decodeData,
        );
      }
    } on Exception catch (e) {
      return ApiResponse(
        isSuccess: false,
        responseCode: -1,
        responseData: null,
        errormessage: e.toString()
      );
    }
  }
  Future<ApiResponse> postRequest({required String url,Map<String,dynamic>? body}) async {
    try {
      Uri uri = Uri.parse(url);
      _logrequest(url,body: body);

      Response response = await post(uri);
      _logresponse(url, response);


      final int statusCode = response.statusCode;

      if (statusCode == 200 || statusCode == 201) {
        //success
        final decodeData = jsonDecode(response.body);
        return ApiResponse(
          isSuccess: true,
          responseCode: statusCode,
          responseData: decodeData,
        );
      } else {
        //Failed
        final decodeData = jsonDecode(response.body);
        return ApiResponse(
          isSuccess: false,
          responseCode: statusCode,
          responseData: decodeData,
        );
      }
    } on Exception catch (e) {
      return ApiResponse(
          isSuccess: false,
          responseCode: -1,
          responseData: null,
          errormessage: e.toString()
      );
    }
  }

  void _logrequest(String url, {Map<String, dynamic>?body}){
    _logger.i("URL => $url\n"
    'Request Body: $body');
  }
  void _logresponse(String url,Response response){
    _logger.i("URL => $url\n"
        'status code: ${response.statusCode}\n'
    'Body: ${response.body}');
  }
}


class ApiResponse {
  final bool isSuccess;
  final int responseCode;
  final dynamic responseData;
  final String? errormessage;

  ApiResponse({
    required this.isSuccess,
    required this.responseCode,
    required this.responseData,
    this.errormessage ='Something went wrong!',
  });
}
