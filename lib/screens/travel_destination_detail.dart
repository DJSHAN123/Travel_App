import 'package:flutter/material.dart';
import 'package:travel_app/models/travel_model.dart';

class TravelDetailsScreen extends StatelessWidget {
  late final TravelModel travelmodel;

  TravelDetailsScreen(this.travelmodel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(travelmodel.image),
                            fit: BoxFit.fill))),
                SizedBox(
                  height: 20,
                ),
                Text(
                  travelmodel.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(travelmodel.description,
                    style: TextStyle(color: Colors.blueGrey[900]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
