import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Log In App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/office.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Scaffold(
                
                backgroundColor: Colors.transparent,
                body: Container(
                  
                  child: Text("Enter Your Login Details")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Enter Your Login Details",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    fontFamily: 'Roboto',
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left:30, right: 30,),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 40),
            ButtonTheme(
              minWidth: 300.0,
              height: 50.0,
              child: new RaisedButton(
                // padding: const EdgeInsets.only(
                //   top: 30.0,
                //   bottom: 30.0,
                //   left: 70.0,
                //   right: 70.0,
                // ),
                elevation: 5.0,
                textColor: Colors.white,
                splashColor: Colors.yellow[200],
                color: Colors.lightBlue[400],
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                  // side: BorderSide(color: Colors.black),
                ),
                onPressed: () => print("Button Pressed"),
                child: new Text("Log In",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                    )),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
