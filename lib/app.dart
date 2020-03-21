import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.amberAccent)),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Profile UI"),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.amberAccent[200],
                  Colors.amber[50],
                ]
              )
            ),
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/African-mother-love.jpg"),
                  radius: 80,
                ),
                ListTile(
                  //leading: Icon(Icons.person_pin),
                  title: Center(
                      child: Text(
                    "Username",
                    style: TextStyle(fontSize: 20),
                  )),
                  subtitle: Center(
                      child:
                          Text("Designation", style: TextStyle(fontSize: 15))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: Text("Message"),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text("Hire Me"),
                    ),
                  ],
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   Expanded(
                     child: ListTile(
                        title: Text("About Me", style: TextStyle(fontSize: 20),),
                        subtitle: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."+
                             "Vivamus facilisis nisi at ornare facilisis. Proin ultricies" +
                              "volutpat blandit. Curabitur non lorem quis erat dapibus eleifend"+
                               "ac vitae odio. Praesent sollicitudin.", style: TextStyle(fontSize: 15),),
                      ),
                   )
                 ],
               )
              ],
            ),
          )),
    );
  }
}
