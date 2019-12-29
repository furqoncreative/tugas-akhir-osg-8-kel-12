import 'package:final_project/colors.dart';
import 'package:final_project/models/drink.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final DrinkElement item;
  DetailPage({Key key, this.item}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    print(item.strDrinkThumb);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: primaryColor,
        leading: FlatButton(
          child: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: Navigator.of(context).pop,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(item.strDrinkThumb),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(item.strDrink, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: accent
                      ),
                      child: Text(item.strCategory),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.bookmark),
                    SizedBox(width: 5),
                    Text(item.strTags != null ? item.strTags : 'No Tags'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("Instructions :", style: TextStyle(fontWeight: FontWeight.bold))
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(item.strInstructions)
              )
            ],
          ),
        ),
      ),
    );
  }
}