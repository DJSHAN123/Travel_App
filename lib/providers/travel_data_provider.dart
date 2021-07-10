import 'package:travel_app/models/travel_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TravelDataProvider with ChangeNotifier {
  List<TravelModel> travelList = [];

  loadTravel() {
    FirebaseFirestore.instance.collection('travel').get().then((QuerySnapshot) {
      QuerySnapshot.docs.forEach((queryDocSnapshot) {
        if (queryDocSnapshot.exists) {
          travelList.add(TravelModel.fromJson(queryDocSnapshot.data()));
        }
      });
      notifyListeners();
    });
  }
}
