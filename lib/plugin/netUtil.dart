import 'dart:convert';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:vp_flutter/plugin/http.dart';

// Must be top-level function
_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

class NetUtil{

  static void init(){
    dio.interceptors..add(CookieManager(CookieJar()))..add(LogInterceptor());
    (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
    dio.options.receiveTimeout = 15000;
  }



  static Future<Response<String>> getHttp(String url){
    return dio.get(url);
  }

  /*static void postHttp(String url,String paramJson){
    dio.post("http://10.1.10.250:3000",data:{"a":1}).then((r) {
      setState(() {
        _text = r.data.replaceAll(RegExp(r"\s"), "");
      });
    }).catchError(print);
  }*/
}