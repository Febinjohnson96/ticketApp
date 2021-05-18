import 'package:flutter/material.dart';
import 'package:ticketapp/model/movies.dart';
import 'package:ticketapp/screens/checkout_screen.dart';
import 'package:ticketapp/widget/rating.dart';
import 'package:ticketapp/widget/responsive.dart';

class BookingScreen extends StatelessWidget {
  final Movies moviedata;
  BookingScreen(this.moviedata);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Container(
            padding: EdgeInsets.symmetric(horizontal: 90),
            child: Text(moviedata.movieName)),
      ),
      body: Responsive(
          mobile: _BookingScreenmobile(moviedata),
          desktop: _BookingScreenDesktop(moviedata)),
      bottomSheet: Responsive.isDesktop(context)
          ? null
          : Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.grey[350],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$56,6',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    width: 160,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: Text('Book Ticket'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckOutScreen(
                              moviedata,
                            ),
                            settings: RouteSettings(name: 'CheckoutScreen'),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

class _BookingScreenmobile extends StatelessWidget {
  final Movies movieData;
  _BookingScreenmobile(this.movieData);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                width: 500,
                height: 300,
                fit: BoxFit.cover,
                image: AssetImage(movieData.imgUrl),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingStars(movieData.rating),
              SizedBox(width: 30),
              Text(movieData.genre.toString()),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '27',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Date',
                      style: TextStyle(
                        color: Colors.grey[350],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '14:10',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Hour',
                      style: TextStyle(
                        color: Colors.grey[350],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Select seat',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Seat No',
                            style: TextStyle(
                              color: Colors.grey[350],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              movieData.desc,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BookingScreenDesktop extends StatelessWidget {
  final Movies movieDatas;
  _BookingScreenDesktop(this.movieDatas);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(height: 500, image: AssetImage(movieDatas.imgUrl))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              movieDatas.movieName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RatingStars(movieDatas.rating),
            Container(
              width: 500,
              padding: EdgeInsets.all(20),
              child: Text(
                movieDatas.desc,
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
              ),
            ),
            Text(
              movieDatas.language,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '27',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Hour',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '14:10',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Select seat',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Seat No',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Text('Book Ticket'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckOutScreen(
                    movieDatas,
                  ),
                  settings: RouteSettings(name: 'CheckoutScreen'),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
