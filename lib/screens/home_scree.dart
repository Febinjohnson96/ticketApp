import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:ticketapp/widget/new_movies.dart';
import 'package:ticketapp/widget/upcoming_movies.dart';
import 'package:ticketapp/widget/responsive.dart';

class HomeScreen extends StatelessWidget {
  final List _icons = [
    EvaIcons.homeOutline,
    EvaIcons.videoOutline,
    EvaIcons.clipboardOutline,
    EvaIcons.personOutline,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(EvaIcons.activity), onPressed: () {}),
        actions: [
          IconButton(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://images.unsplash.com/photo-1609710111507-14d3d70d588c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=494&q=80'),
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello James,',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Book your favorite movies',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            NewMovies(),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Releases',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                UpcomingMovies(),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Responsive.isDesktop(context)
          ? null
          : Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [Icon(_icons[0]), Text('Home')],
                  ),
                  Column(
                    children: [Icon(_icons[1]), Text('Booking')],
                  ),
                  Column(
                    children: [Icon(_icons[2]), Text('List')],
                  ),
                  Column(
                    children: [Icon(_icons[3]), Text('Home')],
                  ),
                ],
              ),
            ),
    );
  }
}
