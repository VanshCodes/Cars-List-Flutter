import 'package:bui/configs/car.dart';
import 'package:bui/styles/textstyle.dart';
import 'package:bui/widgets/specific_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  final String name;
  final double price;
  final String path;
  final String color;
  final String gearBox;
  final String fuel;
  final String brand;
  // final Object

  const CarDetails({
    Key? key,
    required this.price,
    required this.name,
    required this.path,
    required this.color,
    required this.gearBox,
    required this.fuel,
    required this.brand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List SpecsList = [
      ["Color", color, true],
      ["Gear Box", gearBox, false],
      ["Fuel", fuel, false],
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: carConfig.ListofIcons.map((l) => IconButton(
            onPressed: () {},
            icon: Icon(
              l["icon"],
              size: 30,
              color: Theme.of(context).accentColor,
            ))).toList(),
      ),
      body: Wrap(
        children: [
          Text(
            name,
            style: textLayout.mainHeading,
          ),
          Hero(tag: name, child: Image.asset(path)),
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                    width: 1, color: Colors.grey, style: BorderStyle.solid)),
            child: Text(
              brand.toUpperCase(),
              style: textSelectedLayout.basicHeading,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: carConfig.WarrantyCarList.map((e) => SpecificCard(
                price: price,
                name: e["name"],
                selected: e["selected"] != null ? e["selected"] : false,
                name2: "RUPPEE")).toList(),
          ),
          Text(
            "SPECIFICATION".replaceAll("", " "),
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: SpecsList.map((e) => SpecificCard(
                price: e[1],
                name: e[0],
                selected: e[2] != null ? e[2] : false,
                name2: "")).toList(),
          ),
        ],
      ),
    );
  }
}
