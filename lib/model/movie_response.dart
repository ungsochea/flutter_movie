import 'package:flutter_movie/model/movie.dart';

class MovieResponse{
  final List<Movie> movies;
  final String error;
    MovieResponse.fromJson(Map<String,dynamic> json)
        : movies =
          (json["results"] as List).map((i) => new Movie.fromJson(i)).toList(),
          error = "";

    MovieResponse.withError(String errorValue)
      : movies = List(),
          error = errorValue;
}