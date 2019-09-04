import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/containers/app_loading.dart';
import 'package:flutter_movie/keys.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/presentation/loading_indicator.dart';
import 'package:flutter_movie/presentation/movie_item.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movies;

  MovieList({
    Key key,
    @required this.movies
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLoading(builder: (context, loading) {
      return loading
          ? LoadingIndicator(key: AppKeys.moviesLoading)
          : _buildListView();
    });
  }

  ListView _buildListView() {
    return ListView.builder(
      key: AppKeys.moviesList,
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        final movie = movies[index];

        return MovieItem(
          movie: movie
        );
      },
    );
  }
}