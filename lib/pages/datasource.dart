import 'package:dio/dio.dart';
import 'package:persebaya_selamanya/pages/BoredActivity.dart';

Dio createDio (String baseUrl){
  Dio dio = Dio(BaseOptions(
    baseUrl: baseUrl, 
    connectTimeout: 20000,
    sendTimeout: 20000,
    receiveTimeout: 20000,
    contentType: "application/json",
    responseType: ResponseType.json));

    return dio;

}

class ApiPathConstants{
  static const getActivity = "/api/activity";

}

class Services {
  final Dio _dio = createDio("https://www.boredapi.com");

  Future<Activity> getActivity () async {
    final res = await _dio.get(ApiPathConstants.getActivity);
    Activity responseModel = Activity.fromJson(res.data);
    return responseModel;
    
  }
}
