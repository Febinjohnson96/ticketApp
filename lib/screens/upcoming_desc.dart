import 'package:flutter/material.dart';
import 'package:ticketapp/model/upcoming.dart';

class UpComingDesc extends StatelessWidget {
  final Releases releases;
  UpComingDesc(this.releases);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Container(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text('Coming Soon')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                width: 500,
                height: 300,
                fit: BoxFit.cover,
                image: NetworkImage(releases.imgUrls),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                releases.newmovieName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                releases.language,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                releases.genres.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Synopsis',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              padding: EdgeInsets.all(30),
              child: Text(
                releases.description,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
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
              Navigator.pop(context);
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
