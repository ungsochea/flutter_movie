import 'package:flutter_movie/model/personResponse.dart';
import 'package:flutter_movie/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class PersonListBloc{
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonResponse> _subject = BehaviorSubject< PersonResponse >();

  getMovies() async {
    PersonResponse response = await _repository.getPerson();
    _subject.sink.add(response);
  }

  dispose(){
    _subject.close();
  }

  BehaviorSubject<PersonResponse> get subject => _subject;

}

final personListBloc = PersonListBloc();