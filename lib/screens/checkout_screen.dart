import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/model/movies.dart';
import 'package:ticketapp/screens/confirm_screen.dart';
import 'package:ticketapp/widget/responsive.dart';

class CheckOutScreen extends StatelessWidget {
  final Movies moviedata;
  CheckOutScreen(this.moviedata);
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
      body: Responsive(
          mobile: _CheckOutScreenMobile(moviedata),
          desktop: _CheckOutScreenDesktop(moviedata)),
      bottomSheet: Responsive.isDesktop(context)
          ? null
          : Container(
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Text('Pay \$56.6'),
                ),
              ),
            ),
    );
  }
}

class _CheckOutScreenMobile extends StatefulWidget {
  final Movies moviesData;
  _CheckOutScreenMobile(this.moviesData);
  @override
  __CheckOutScreenMobileState createState() =>
      __CheckOutScreenMobileState(moviesData);
}

class __CheckOutScreenMobileState extends State<_CheckOutScreenMobile> {
  final Movies moviesData;
  __CheckOutScreenMobileState(this.moviesData);
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return SafeArea(
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
                      image: AssetImage(moviesData.imgUrl!)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        moviesData.movieName!,
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
                        moviesData.genre.toString(),
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isSelected ? Colors.black : Colors.grey,
                      ),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _isSelected ? Colors.black : Colors.grey,
                    ),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _isSelected ? Colors.black : Colors.grey,
                    ),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _isSelected ? Colors.black : Colors.grey,
                    ),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _isSelected ? Colors.black : Colors.grey,
                    ),
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
    );
  }
}

class _CheckOutScreenDesktop extends StatefulWidget {
  final Movies moviesDatas;
  _CheckOutScreenDesktop(this.moviesDatas);
  @override
  _CheckOutScreenDesktopState createState() =>
      _CheckOutScreenDesktopState(moviesDatas);
}

class _CheckOutScreenDesktopState extends State<_CheckOutScreenDesktop> {
  final Movies moviesDatas;
  _CheckOutScreenDesktopState(this.moviesDatas);
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(height: 500, image: AssetImage(moviesDatas.imgUrl!))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              moviesDatas.movieName!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(moviesDatas.genre.toString()),
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
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Payment Options',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 300,
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
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _isSelected ? Colors.black : Colors.grey,
                        ),
                        child: Icon(
                          EvaIcons.checkmarkOutline,
                          color: _isSelected ? Colors.white : Colors.grey[300],
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isSelected ? Colors.black : Colors.grey,
                      ),
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[300],
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isSelected ? Colors.black : Colors.grey,
                      ),
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[300],
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isSelected ? Colors.black : Colors.grey,
                      ),
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[300],
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isSelected ? Colors.black : Colors.grey,
                      ),
                      child: Icon(
                        EvaIcons.checkmarkOutline,
                        color: Colors.grey[300],
                      ),
                    ),
                  )
                ],
              ),
            ),
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
                  builder: (context) => ConfirmScreen(moviesDatas),
                  settings: RouteSettings(name: 'ConfirmScreen'),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
