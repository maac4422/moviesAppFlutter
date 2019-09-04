import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_movie/keys.dart';
import 'package:flutter_movie/models/movie.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  MovieItem({
    @required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: AppKeys.movieItem(movie.id),
      child: ListTile(
        title: Hero(
          tag: '${movie.id}__heroTag',
          child: Text(
            movie.name,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
}