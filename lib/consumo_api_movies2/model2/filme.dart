// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Filme {
  String? id;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String director;
  String writer;
  String actors;
  String plot;
  String language;
  String country;
  String awards;
  String poster;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String imdbID;
  String type;
  String response;
  List<String> images;
  Filme({
    this.id,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.imdbID,
    required this.type,
    required this.response,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "Year": year,
      "Rated": rated,
      "Released": released,
      "Runtime": runtime,
      "Genre": genre,
      "Director": director,
      "Writer": writer,
      "Actors": actors,
      "Plot": plot,
      "Language": language,
      "Country": country,
      "Awards": awards,
      "Poster": poster,
      "Metascore": metascore,
      "ImdbRating": imdbRating,
      "ImdbVotes": imdbVotes,
      "ImdbID": imdbID,
      "Type": type,
      "Response": response,
      "Images": images
    };
  }

  factory Filme.fromMap(Map<String, dynamic> map) {
    return Filme(
        id: map["id"] ?? '',
        year: map["Year"] ?? '',
        rated: map["Rated"] ?? '',
        released: map["Released"] ?? '',
        runtime: map["Runtime"] ?? '',
        genre: map["Genre"] ?? '',
        director: map["Director"] ?? '',
        writer: map["Writer"] ?? '',
        actors: map["Actors"] ?? '',
        plot: map["Plot"] ?? '',
        language: map["Language"] ?? '',
        country: map["Country"] ?? '',
        awards: map["Awards"] ?? '',
        poster: map["Poster"] ?? '',
        metascore: map["Metascore"] ?? '',
        imdbRating: map["ImdbRating"] ?? '',
        imdbVotes: map["ImdbVotes"] ?? '',
        imdbID: map["ImdbID"] ?? '',
        type: map["Type"] ?? '',
        response: map["Response"] ?? '',
        images: List<String>.from(map["Images"] ?? []));
  }
  String toJson() => jsonEncode(toMap());
  factory Filme.fromJson(String json) => Filme.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Filme(id: $id, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type, response: $response, images: $images)';
  }
}
