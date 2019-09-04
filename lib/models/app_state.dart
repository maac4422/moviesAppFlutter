import 'package:flutter/material.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:meta/meta.dart';
import 'package:flutter_movie/models/models.dart';

@immutable
class AppState {
  final bool isLoading;
  final AppTab activeTab;
  final List<Movie> movies;

  AppState(
    {
      this.isLoading = false,
      this.activeTab = AppTab.movies,
      this.movies = const [],
    }
  );

  factory AppState.loading() => AppState(isLoading: true);

  AppState copyWith({
    bool isLoading,
    AppTab activeTab,
    List<Movie> movies
  }) {
    return AppState(
      isLoading:  isLoading ?? this.isLoading,
      activeTab: activeTab ?? this.activeTab,
      movies: movies ?? this.movies,
    );
  }
}