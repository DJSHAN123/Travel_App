import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/providers/travel_data_provider.dart';
import 'package:travel_app/screens/travel_list_screen.dart';
import 'package:provider/single_child_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Travel App",
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.pink[800])),
        home: TravelListScreen(),
      ),
    );
  }
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<TravelDataProvider>(
      create: (_) => TravelDataProvider())
];
