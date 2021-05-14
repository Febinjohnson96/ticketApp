import 'package:flutter/material.dart';
import 'package:ticketapp/model/movies.dart';
import 'package:ticketapp/screens/home_scree.dart';

class ConfirmScreen extends StatelessWidget {
  final Movies movieData;
  ConfirmScreen(this.movieData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text('Confirmation')),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  movieData.movieName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Text(
              movieData.language,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                height: 300,
                width: 300,
                fit: BoxFit.cover,
                image: NetworkImage(movieData.imgUrl),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ticket Confirmed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '#Ed8596',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage('images/qrcode.png')),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please show this code in Movie Hall',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: SizedBox(
          height: 60,
          width: 180,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Text('Back To Home'),
          ),
        ),
      ),
    );
  }
}
