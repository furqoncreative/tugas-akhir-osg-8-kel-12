import 'dart:convert';

import 'package:final_project/colors.dart';
import 'package:final_project/models/drink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Drink> getData() async {
    final response = await http.get(
        'https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a',
        headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      return drinkFromJson(response.body);
    } else {
      throw Exception("Data Failed To Load");
    }
  }

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Drinks'),
        backgroundColor: primaryColor,
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.info, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushNamed('/about');
            },
          )
        ],
      ),
      body: FutureBuilder<Drink>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          Drink drink = snapshot.data;
          if (snapshot.hasData) {
            return GridView.builder(
              padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
              itemCount: drink.drinks.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.8,
              ),
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: ScreenUtil.instance.setHeight(280.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: <Widget>[
                              Text(
                                drink.drinks[index].strDrink,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: ScreenUtil.instance.setHeight(24),
                                      right: ScreenUtil.instance.setHeight(16),
                                      left: ScreenUtil.instance.setHeight(16)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(16.0)),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: myshadow.withOpacity(0.2),
                                            offset: const Offset(0.0, 0.0),
                                            blurRadius: 6.0),
                                      ],
                                    ),
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20.0)),
                                        child: AspectRatio(
                                          aspectRatio: 1.20,
                                          child: Image.network(drink
                                              .drinks[index].strDrinkThumb),
                                        )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                );
              },
            );
          }
          return Container(child: Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }
}
