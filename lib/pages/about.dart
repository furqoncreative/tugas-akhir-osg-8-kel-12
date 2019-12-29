import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffd460),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, backgroundImage: AssetImage('assets/icon.png')),
              Text(
                'CockTails App v1',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Color(0xfff07b3f),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Kelompok 12',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Color(0xfff07b3f),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Color(0xfff07b3f),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/furqon.png'),
                  ),
                  title: Text('Deden Muhammad Furqon'),
                  subtitle: Text(
                      'github : furqoncreative \nwebsite : furqoncreative.sera5.id\ninstagram : furqoncreative'),
                  isThreeLine: true,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/rifqi.png'),
                  ),
                  title: Text('Rifqi Sambas Khairurrohman'),
                  subtitle:
                      Text('github : rifqisambas \nwebsite : rifqi.sera5.id'),
                  isThreeLine: true,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/wahid.png'),
                  ),
                  title: Text('Wahidun Niam F A'),
                  subtitle: Text('github : iamwahid \ninstagram : iam.wahidin'),
                  isThreeLine: true,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/farhan.png'),
                  ),
                  title: Text('Ahmad Farhan Fauzan'),
                  subtitle:
                      Text('github : farhan0x1 \ninstagram : farhanfauzan0'),
                  isThreeLine: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
