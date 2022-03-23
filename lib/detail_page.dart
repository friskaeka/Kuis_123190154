import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/data_hotel.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String location;
  final String stars;
  final String roomPrice;
  final String websitelink;
  final List<String> imageUrl;
  final List<String> facility;
  final List<String> iconFacility;


  const DetailPage({
    Key? key,
    required this.name,
    required this.location,
    required this.stars,
    required this.roomPrice,
    required this.websitelink,
    required this.imageUrl,
    required this.facility,
    required this.iconFacility,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Hotel'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30.0),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(imageUrl[0]),
              SizedBox(height: 16,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("Stars :  ", style: TextStyle(fontWeight: FontWeight.normal)),
              Text(stars, style: TextStyle(fontWeight: FontWeight.normal),),
              Text(" "),
              Text("Harga : ${roomPrice}", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text(" "),
             // Text("website : ${ratings}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
             // Text(" "),
             // Text("Reviewer : ${reviewer}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
             // Text(" "),
             // Text("Sold : ${sold}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}