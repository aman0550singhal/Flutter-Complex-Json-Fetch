import 'package:first_assignment/user.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Users user;
  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Id: ",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    user.userID.toString(),
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Name: ",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    user.name,
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Username: ",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    user.username,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Email: ",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text( user.email,
                    style: TextStyle(fontSize: 20.0, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Address: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "   Street: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text( user.address.street,
                    style: TextStyle(fontSize: 20.0,),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "   City: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    user.address.city,
                    style: TextStyle(fontSize: 20.0,),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  
                  Text(
                    "   Suite: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(user.address.suite,
                    style: TextStyle(fontSize: 20.0,),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "   Zipcode: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(user.address.zipcode,
                    style: TextStyle(fontSize: 20.0, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "   Geo: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "     Lat: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(user.address.geo.lat,
                    style: TextStyle(fontSize: 20.0, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "     Lng: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text( user.address.geo.lng,
                    style: TextStyle(fontSize: 20.0, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Phone: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text( user.phone,
                    style: TextStyle(fontSize: 20.0, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Website: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text( user.website,
                    style: TextStyle(fontSize: 20.0, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Company: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "   Name: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text( user.company.name,
                    style: TextStyle(fontSize: 20.0, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "   CatchPhrase: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,),
                  ),
                  Text(user.company.catchPhrase.substring(0,14) + "...",
                    style: TextStyle(fontSize: 20.0,),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "   Bs: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text( user.company.bs.substring(0,23) + "...",
                    style: TextStyle(fontSize: 20.0,),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
