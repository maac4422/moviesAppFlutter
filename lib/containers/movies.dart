import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_movie/models/models.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/presentation/movie_list.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';


class Movies extends StatelessWidget {
  Movies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return MovieList(
          movies: vm.movies,
        );
      },
    );
  }
}

class _ViewModel {
  final bool loading;
  final List<Movie> movies;

  _ViewModel({
    @required this.loading,
    @required this.movies,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      loading: store.state.isLoading,
      movies: store.state.movies
    );
  }
}