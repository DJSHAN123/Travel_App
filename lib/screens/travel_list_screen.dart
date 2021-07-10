import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/providers/travel_data_provider.dart';
import 'package:travel_app/screens/travel_destination_detail.dart';
import 'package:travel_app/models/travel_model.dart';

class TravelListScreen extends StatefulWidget {
  @override
  _TravelListScreenState createState() => _TravelListScreenState();
}

class _TravelListScreenState extends State<TravelListScreen> {
  @override
  void initState() {
    super.initState();
    final mdl = Provider.of<TravelDataProvider>(context, listen: false);
    mdl.loadTravel();
  }

  @override
  Widget build(BuildContext context) {
    final mdl = Provider.of<TravelDataProvider>(context);
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: mdl.travelList.length,
            itemBuilder: (context, index) {
              TravelModel travel = mdl.travelList[index];
              return Card(
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(travel.image),
                                    fit: BoxFit.fill))),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          travel.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(travel.shortDetail,
                            style: TextStyle(color: Colors.blueGrey[900]))
                      ],
                    ),
                  ),
                  onTap: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TravelDetailsScreen(travel)));
                  },
                ),
              );
            }));
  }
}
