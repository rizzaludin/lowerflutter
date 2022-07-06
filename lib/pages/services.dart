import 'package:dio/dio.dart';

import 'person.dart';

abstract class Services {
  static Future<Person?> getById(int id) async {
    try{
      var response = await Dio().get('https://reqres.in/api/users/$id');
    if (response.statusCode == 200){
      return Person(id:  response.data['data']['id'],
       name: response.data['data']['first_name'] +
       ' ' + 
       response.data['data']['last_name'],
       email:response.data['data']['email']);
    }
    return null;
    }catch(e){
      throw Exception(e.toString());
    }
  }

  static Future<Person?> createUser(
      String firstName, String lastName, String email) async {}
}
