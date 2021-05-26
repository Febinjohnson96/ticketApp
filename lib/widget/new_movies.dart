import 'package:flutter/material.dart';
import 'package:ticketapp/model/movies.dart';
import 'package:ticketapp/screens/booking_screen.dart';
import 'package:ticketapp/widget/rating.dart';
import '../data/data.dart';

class NewMovies extends StatefulWidget {
  @override
  _NewMoviesState createState() => _NewMoviesState();
}

class _NewMoviesState extends State<NewMovies> {
  _buildnewMovies(BuildContext context, Movies movies) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BookingScreen(
                    movies,
                  ),
              settings: RouteSettings(name: 'BookScreen')),
        );
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  height: 200,
                  width: 250,
                  fit: BoxFit.cover,
                  image: AssetImage(movies.imgUrl),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          movies.movieName,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          movies.language,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        RatingStars(movies.rating),
                        SizedBox(
                          width: 5,
                        ),
                        Text(movies.genre.toString()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movielists.length,
        itemBuilder: (BuildContext context, index) {
          Movies movies = movielists[index];
          return _buildnewMovies(context, movies);
        },
      ),
    );
  }
}
