import 'package:dio/dio.dart';
import 'package:flutter_douban_app/config/config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseUrl, connectTimeout: HttpConfig.timeout);
  static final Dio dio = Dio(baseOptions);
  static Future<T> request<T>(String url,
      {String method = "get",
      Map<String, dynamic> params,
      Interceptor inter}) async {
    // 1. 创建单独配置
    final options = Options(method:method);
    // 全局拦截器
    Interceptor dInter = InterceptorsWrapper(
      onRequest: (options) {
        print("请求拦截");
        return options;
      },
      onResponse: (options) {
        print("响应拦截");
        return options;
      },
      onError: (error){
        print("错误拦截");
        return error;
      }
    );

    List<Interceptor> inters = [dInter];
    if (inter != null) {
      inters.add(inter);
    }
    // 添加拦截器
    dio.interceptors.addAll(inters);
    // 发送网络请求
    try {
      Response response = await dio.request(url,queryParameters: params,options: options);
      return response.data;
    } on DioError catch(e) {
      return Future.error(e);
    }
  }
}
