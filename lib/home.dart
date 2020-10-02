import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Divay Kumar"),
                accountEmail: Text("rishu.ranta09@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "D",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home), title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings), title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts), title: Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),


        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),

                  child: Image(
                    image: new AssetImage("assets/images/bg.jpg"),
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Container(

                    alignment: Alignment.center,
                    child: new SizedBox(
                        height: 300,
                        width: 150,
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          child: Image.asset('assets/images/start.png', fit: BoxFit.cover),
                          onPressed: (){
                            // Navigator.of(context).pushNamed('/home');
                          },
                        )
                    )),

              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 5.0, left: 0.0, right: 0.0),
              child: Column(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 44,
                          maxWidth: 64,
                          maxHeight: 64,
                        ),
                        child: Image.asset('assets/images/location.jpg', fit: BoxFit.cover),
                      ),
                      title: Text('FIND LOCATIONS'),
                      subtitle: Text('Restaurants,cafes,hotrls and gas stations'),
                      onTap: () {},
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 44,
                          maxWidth: 64,
                          maxHeight: 64,
                        ),
                        child: Image.asset('assets/images/weather.png', fit: BoxFit.cover),
                      ),
                      title: Text('WEATHER FORECAST'),
                      subtitle: Text('Get the latest weather updates'),
                      onTap: () {},
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 44,
                          maxWidth: 64,
                          maxHeight: 64,
                        ),
                        child: Image.asset('assets/images/voice.jpg', fit: BoxFit.cover),
                      ),
                      title: Text('VOICE COMMANDS'),
                      subtitle: Text('Learn and understand AI'),
                      onTap: () {},
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 44,
                          maxWidth: 64,
                          maxHeight: 64,
                        ),
                        child: Image.asset('assets/images/reports.png', fit: BoxFit.cover),
                      ),
                      title: Text('REPORTS'),
                      subtitle: Text('View reports summary'),
                      onTap: () {},
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 44,
                          maxWidth: 64,
                          maxHeight: 64,
                        ),
                        child: Image.asset('assets/images/settings.png', fit: BoxFit.cover),
                      ),
                      title: Text('SETTINGS'),
                      subtitle: Text('Settings and calibrations'),
                      onTap: () {},
                    ),
                  ),

                  SizedBox(height: 10.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:

                        Center(
                          child: Text('Go Back',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    ),
                  ),
                ],
              )),

        ]));
  }
}
