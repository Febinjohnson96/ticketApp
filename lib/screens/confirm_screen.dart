import 'package:flutter/material.dart';
import 'package:ticketapp/model/movies.dart';
import 'package:ticketapp/screens/home_scree.dart';
import 'package:ticketapp/widget/responsive.dart';

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
      body: Responsive(
          mobile: _ConfirmScreenMobile(movieData),
          desktop: _ConfirmScreenDesktop(movieData)),
      bottomSheet: Responsive.isDesktop(context)
          ? null
          : Container(
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Text('Back To Home'),
                ),
              ),
            ),
    );
  }
}

class _ConfirmScreenMobile extends StatelessWidget {
  final Movies movieData;
  _ConfirmScreenMobile(this.movieData);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                movieData.movieName!,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Text(
            movieData.language!,
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
              image: AssetImage(movieData.imgUrl!),
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
    );
  }
}

class _ConfirmScreenDesktop extends StatelessWidget {
  final Movies movieDatas;
  _ConfirmScreenDesktop(this.movieDatas);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(height: 500, image: AssetImage(movieDatas.imgUrl!))),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieDatas.movieName!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                movieDatas.language!,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[350],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Ticket Confirmed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '#Ed8596',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image(
                height: 100,
                width: 200,
                image: AssetImage('images/qrcode.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Please show this code in Movie Hall',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ]),
        SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Text('Back to Home'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                  settings: RouteSettings(name: 'HomeScreen'),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
