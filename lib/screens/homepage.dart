import 'package:bui/configs/app.dart';
import 'package:bui/styles/textstyle.dart';
import 'package:bui/widgets/CarsGrid.dart';
import 'package:flutter/material.dart';

var appConfig = AppConfig();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          appConfig.title,
          style: textLayout.subHeading,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Avaliable Cars",
              style: textLayout.mainHeading,
            ),
          ),
          CarsGrid()
        ],
      ),
    );
  }
}
