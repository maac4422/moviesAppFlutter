import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_movie/models/models.dart';

@immutable
class AppState {
  final bool isLoading;
  final AppTab activeTab;

  AppState(
    {
      this.isLoading = false,
      this.activeTab = AppTab.movies
    }
  );

  factory AppState.loading() => AppState(isLoading: true);

  AppState copyWith({
    bool isLoading,
    AppTab activeTab,
  }) {
    return AppState(
      isLoading:  isLoading ?? this.isLoading,
      activeTab: activeTab ?? this.activeTab
    );
  }
}