import 'package:bui/models/main.dart';
import 'package:bui/screens/cardetail.dart';
import 'package:bui/styles/textstyle.dart';
import 'package:flutter/material.dart';

class CarsGrid extends StatelessWidget {
  const CarsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics:
            NeverScrollableScrollPhysics(), // to disable GridView's scrolling
        shrinkWrap: true,
        itemCount: allCars.cars.length,
        itemBuilder: (ctx, i) {
          var car = allCars.cars[i];
          print(car);
          return Padding(
            padding: const EdgeInsets.only(
                top: 9.0, bottom: 10.0, left: 10.0, right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CarDetails(
                        price: car.price,
                        name: car.name,
                        path: car.path,
                        color: car.color,
                        gearBox: car.gearBox,
                        fuel: car.fuel,
                        brand: car.brand)));
              },
              child: Container(
                margin: EdgeInsets.only(
                    top: i.isEven ? 0 : 12.0, bottom: i.isEven ? 12.0 : 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 10, spreadRadius: 1)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.3),
                  child: Column(
                    children: [
                      Image.asset(
                        allCars.cars[i].path,
                      ),
                      Text(
                        allCars.cars[i].name,
                        style: textLayout.basicHeading,
                      ),
                      Text(
                        "\$ ${allCars.cars[i].price.toString()}",
                        style: textLayout.subHeading,
                      ),
                      Text("per month")
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
