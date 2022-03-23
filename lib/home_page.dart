import 'package:flutter/material.dart';
import 'package:pertemuan_empat/detail_page.dart';

import 'model/data_hotel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marco"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30.0),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var hotelList ;

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(hotelList[index], context);
      },
      itemCount: hotelList.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  // Widget _createGridCard() {
  //   return GridView.builder(
  //     gridDelegate:
  //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  //     itemBuilder: (context, index){
  //       return _createCard();
  //     },
  //     itemCount: 20,
  //   );
  // }

  Widget _createCard(DataHotel data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(name: data.name, location: data.location,stars: data.stars, roomPrice: data.roomPrice, websitelink: data.websiteLink, imageUrl: data.imageUrl, facility: data.facility, iconFacility: data.iconFacility);
          }));
        },
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.network(data.imageUrl[0]),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text(data.name)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
