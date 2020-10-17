import 'package:dio/dio.dart';
import 'package:food_court/core/Services/config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseUrl, connectTimeout: HttpConfig.timeout);
  static final Dio dio = Dio(baseOptions);

  static Future<T> request<T>(String url,
      {String method = "get", Map<String, dynamic> params,Interceptor inter}) async {
    // 1. 创建单独配置
    final options = Options(method: method);
    // 全局拦截器
    Interceptor dInter = InterceptorsWrapper(onRequest: (options) {
      print("请求拦截");
      return options;
    },onResponse: (response){
      print("响应拦截");
      return response;
    },onError: (error){
      print("错误拦截");
      return error;
    });

    List<Interceptor> inters = [dInter];

    // 请求单独拦截器
    if (inter != null) {
      inters.add(inter);
    }
    //添加到统一的拦截器中
    dio.interceptors.addAll(inters);
    // 发送网络请求
    try {
      Response response = await dio.request(url,queryParameters: params,options: options);
      return response.data;
    } on DioError catch(error) {
      return Future.error(error);
    }
  }
}
