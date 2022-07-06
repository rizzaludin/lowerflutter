// import 'package:dio/dio.dart';
// import 'package:persebaya_selamanya/pages/datasource.dart';
// import 'package:persebaya_selamanya/pages/BoredActivity.dart';

// Future <int> postActivity({
//   required String name,
//   required String type,
//   required int price,

  
// }) async {
//   try {
    
//     final res = await _dio.post(ApiPathConstants.postActivity, queryParameters: {
//       "activity": name,
//       "type": type,
//       "price": price,
//     });
//     return res.statusCode ?? 404;
//   } on DioError {
//     return 404;
//       }
// }