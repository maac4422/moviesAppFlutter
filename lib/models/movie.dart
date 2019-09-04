class Movie {
  final String id;
  final String name;

  Movie({String id, String name})
    : this.id = id ?? '0',
      this.name = name ?? '';
  
  
}