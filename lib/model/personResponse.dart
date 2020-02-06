import 'package:flutter_movie/model/perosn.dart';

class PersonResponse{
  final List<Person> person;
  final String error;
  PersonResponse.fromJson(Map<String,dynamic> json)
      : person =
  (json["results"] as List).map((i) => new Person.fromJson(i)).toList(),
        error = "";

  PersonResponse.withError(String errorValue)
      : person = List(),
        error = errorValue;
}