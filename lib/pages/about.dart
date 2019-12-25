import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        leading: FlatButton(
          child: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: Navigator.of(context).pop,
        ),
      ),
      body: Text('Halaman About'),
    );
  }
}