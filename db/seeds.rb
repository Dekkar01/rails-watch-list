puts 'Cleaning db'
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all


# Создание фильмов
movies = [
  { title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9 },
  { title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7 },
  { title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9 },
  { title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0 },
  { title: "Mad Max: Fury Road", overview: "In a post-apocalyptic wasteland, Max teams up with Furiosa to escape a tyrannical warlord.", poster_url: "https://image.tmdb.org/t/p/original/8A7q49wshCciJ2A03ILrD2wz3PO.jpg", rating: 8.1 },
  { title: "The Godfather Part II", overview: "The Godfather's legacy continues with Vito Corleone's rise to power and Michael Corleone's attempts to expand the family's empire.", poster_url: "https://image.tmdb.org/t/p/original/4XlwFlTxB2xf8e5tZXnMJEMtoO8.jpg", rating: 9.0 },
  { title: "Pulp Fiction", overview: "Interlocking stories of crime and redemption in Los Angeles.", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.9 },
  { title: "The Departed", overview: "An undercover cop and a mole in the police force try to identify each other while infiltrating an Irish gang.", poster_url: "https://image.tmdb.org/t/p/original/7t5w2NzPYtJFGijF2s64ZPSm0rL.jpg", rating: 8.5 },
  { title: "Inglourious Basterds", overview: "A group of Jewish-American soldiers plan to assassinate Nazi leaders in occupied France.", poster_url: "https://image.tmdb.org/t/p/original/3vpxGHZh6wbgJ0XdpYl5iABYAtX.jpg", rating: 8.3 },
]

movies.each do |movie_attributes|
  Movie.create(movie_attributes)
end

# Создание списков
lists = [
  { name: "Action Movies" },
  { name: "Classic Movies" },
  { name: "Romantic Movies" },
  { name: "Heist Movies" },
  { name: "Sci-Fi Movies" },
  { name: "Crime Movies" }
]

lists.each do |list_attributes|
  List.create(list_attributes)
end

# Создание закладок (Bookmarks)
bookmarks = [
  { comment: "Amazing superhero action!", movie: Movie.find_by(title: "Wonder Woman 1984"), list: List.find_by(name: "Action Movies") },
  { comment: "One of the best movies ever!", movie: Movie.find_by(title: "The Shawshank Redemption"), list: List.find_by(name: "Classic Movies") },
  { comment: "A timeless love story.", movie: Movie.find_by(title: "Titanic"), list: List.find_by(name: "Romantic Movies") },
  { comment: "Thrilling and smart.", movie: Movie.find_by(title: "Ocean's Eight"), list: List.find_by(name: "Heist Movies") },
  { comment: "An epic journey through a dystopian world.", movie: Movie.find_by(title: "Mad Max: Fury Road"), list: List.find_by(name: "Action Movies") },
  { comment: "A powerful continuation of the Corleone saga.", movie: Movie.find_by(title: "The Godfather Part II"), list: List.find_by(name: "Classic Movies") },
  { comment: "A genre-defining masterpiece.", movie: Movie.find_by(title: "Pulp Fiction"), list: List.find_by(name: "Crime Movies") },
  { comment: "Intense and gripping with a stellar cast.", movie: Movie.find_by(title: "The Departed"), list: List.find_by(name: "Crime Movies") },
  { comment: "A thrilling alternative history of WWII.", movie: Movie.find_by(title: "Inglourious Basterds"), list: List.find_by(name: "Action Movies") }
]

bookmarks.each do |bookmark_attributes|
  Bookmark.create(bookmark_attributes)
end
