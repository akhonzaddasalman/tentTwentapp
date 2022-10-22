
class Movie {
  String? movieId;
  String? movieName;
  String? movieImage;
  int? index;

  Movie({
    this.movieId,
    this.movieName,
    this.movieImage,
    this.index,
  });
  static final List<Movie> movieList = [
    Movie(
      movieId: '1',
      movieName: 'Taco Bell',
      movieImage: 'assets/Images/1.png',
    ),
    Movie(
      movieId: '2',
      movieName: 'Taco Bell',
      movieImage: 'assets/Images/2.png',
    ),
    Movie(
      movieId: '3',
      movieName: 'Taco Bell',
      movieImage: 'assets/Images/3.png',
    ),
    Movie(
      movieId: '4',
      movieName: 'Taco Bell',
      movieImage: 'assets/Images/4.png',
    ),
    Movie(
      movieId: '5',
      movieName: 'Taco Bell',
      movieImage: 'assets/Images/5.png',
    ),
  ];


}
