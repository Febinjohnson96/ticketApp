import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/model/movies.dart';
import 'package:ticketapp/screens/confirm_screen.dart';

class CheckOutScreen extends StatefulWidget {
  final Movies movidata;
  CheckOutScreen(this.movidata);
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState(movidata);
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final Movies moviedata;
  _CheckOutScreenState(this.moviedata);
  bool _isSelected = false;
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
            child: Text('Checkout')),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                        image: AssetImage(moviedata.imgUrl)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          moviedata.movieName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          moviedata.genre.toString(),
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              EvaIcons.pinOutline,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Ragam Theater'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '27',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Date',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '14:10',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Hour',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '87',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Seat No',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                Icon(EvaIcons.arrowIosForwardOutline)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Payment Method',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              child: ListView(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        image: AssetImage('images/amazon.png'),
                      ),
                    ),
                    title: Text('Amazon Pay'),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          (_isSelected == false)
                              ? _isSelected = true
                              : _isSelected = false;
                        });
                      },
                      child: Container(
                        color: _isSelected ? Colors.black : Colors.grey[100],
                        child: Icon(
                          EvaIcons.checkmarkOutline,
                          color: _isSelected ? Colors.white : Colors.grey[100],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        image: AssetImage('images/applepay.png'),
                      ),
                    ),
                    title: Text('Apple Pay'),
                    trailing: Container(
                      color: Colors.grey[100],
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        image: AssetImage('images/googlepay.jpg'),
                      ),
                    ),
                    title: Text('Google Pay'),
                    trailing: Container(
                      color: Colors.grey[100],
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        image: AssetImage('images/paypal.png'),
                      ),
                    ),
                    title: Text('PayPal'),
                    trailing: Container(
                      color: Colors.grey[100],
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        image: AssetImage('images/visa.png'),
                      ),
                    ),
                    title: Text('Credit Card'),
                    trailing: Container(
                      color: Colors.grey[100],
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[100],
                      ),
                    ),
                  )
                ],
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
          height: 80,
          width: 180,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConfirmScreen(moviedata),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Text('Pay \$56.6'),
          ),
        ),
      ),
    );
  }
}
