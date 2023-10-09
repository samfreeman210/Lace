import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterUserAPICall {
  static Future<ApiCallResponse> call({
    String? email = 'foo@bar.com',
    String? password = '123456',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUserAPI',
      apiUrl:
          'https://api.backendless.com/DEE09A51-8698-8CA5-FF47-C07F95F9E900/DE84BDBB-D521-4DD4-88E5-535794AB9253/users/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? login = '',
    String? password = '',
  }) {
    final ffApiRequestBody = '''
{
  "login": "${login}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginAPI',
      apiUrl:
          'https://api.backendless.com/DEE09A51-8698-8CA5-FF47-C07F95F9E900/DE84BDBB-D521-4DD4-88E5-535794AB9253/users/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RetreivePostAPICall {
  static Future<ApiCallResponse> call({
    String? whereClause = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RetreivePostAPI',
      apiUrl:
          'https://api.backendless.com/DEE09A51-8698-8CA5-FF47-C07F95F9E900/DE84BDBB-D521-4DD4-88E5-535794AB9253/data/Posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'where': whereClause,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadPostAPICall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadPostAPI',
      apiUrl:
          'https://backendlessappcontent.com/DEE09A51-8698-8CA5-FF47-C07F95F9E900/DE84BDBB-D521-4DD4-88E5-535794AB9253/files/pictures',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RetreiveImageAPICall {
  static Future<ApiCallResponse> call({
    String? whereClause = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RetreiveImageAPI',
      apiUrl:
          'https://backendlessappcontent.com/DEE09A51-8698-8CA5-FF47-C07F95F9E900/DE84BDBB-D521-4DD4-88E5-535794AB9253/files/pictures',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'where': whereClause,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
