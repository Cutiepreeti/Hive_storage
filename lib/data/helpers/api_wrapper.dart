
import 'dart:async';

import 'package:api/domain/domain.dart';
import 'package:http/http.dart'as http;

class ApiWrapper
{

  final String _baseUrl = 'https://reqres.in/';
  Future<ResponseModel> makeRequest(String url,Request request,dynamic data)
  async
  {
    switch(request)
  {

    case Request.get:
      var uri= _baseUrl + url;

      try
      {
        var response=await http.get(Uri.parse(uri));
        //print('response:$response');
        return returnResponse(response);
      }
      on TimeoutException catch(_)
     {
        return ResponseModel(
        data: '{"message": "Request timed out"}',
        hasError: true
        );
     }
  }
  // return ResponseModel(
  //     data: '{"message":"No Internet"}',
  //     hasError: true,
  //     errorCode: 1000
  // );
}

  ResponseModel returnResponse(http.Response response)
  {
    switch(response.statusCode)
    {
      case 200:
        return ResponseModel(
            data: response.body,
            hasError: false,
            errorCode:response.statusCode);
      default:
        return ResponseModel(
            data: response.body,
            hasError: true,
            errorCode: response.statusCode);
    }
  }
}

class ApiGetUser {
  final String _baseUrl = 'https://reqres.in/';

  Future<ResponseModel> apiRequest(String url, Request request,dynamic
       data) async
  {
    switch (request) {
      case Request.get:
        var uri = _baseUrl + url;

        try {
          var response = await http.get(Uri.parse(uri));
          // print(response.body.);
          return returnResponse(response);
         }
        on TimeoutException catch (_) {
          return ResponseModel(
            data: '{"message": "Request timed out"}',
            hasError: true,
          );
        }
    }
    // return ResponseModel(
    //     data: '{"message":"No Internet"}',
    //     hasError: true,
    //     errorCode: 1000
    // );
  }

  ResponseModel returnResponse(http.Response response)
  {
    switch(response.statusCode)
    {
      case 200:
        // print(response.bod y);
        return ResponseModel(
            data: response.body,
            hasError: false,
            errorCode:response.statusCode);
      default:
        return ResponseModel(
            data: response.body,
            hasError: true,
            errorCode: response.statusCode);
    }
  }
}