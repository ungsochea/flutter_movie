import 'package:flutter_movie/model/movie_response.dart';
import 'package:flutter_movie/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class NowPlayingListBloc{
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieResponse> _subject = BehaviorSubject< MovieResponse >();

  getMovies() async {
    MovieResponse response = await _repository.getPlayingMovies();
    _subject.sink.add(response);
  }

  dispose(){
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;

}

final nowPlayingListBloc = NowPlayingListBloc();