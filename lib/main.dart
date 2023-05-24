import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new loginpage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _iconanimationController;
  late Animation<double> _iconanimation;
  @override
  void initstate() {
    super.initState();
    _iconanimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 5));
    _iconanimation = CurvedAnimation(
        parent: _iconanimationController, curve: Curves.easeInOut);
    _iconanimation.addListener(() => this.setState(() {}));
    _iconanimationController.forward();
    ;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
              image: AssetImage("assets/camproj2.jpg"),
              fit: BoxFit.fill,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 100,
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                      brightness: Brightness.dark, primarySwatch: Colors.red,inputDecorationTheme: InputDecorationTheme(labelStyle: TextStyle(color: Color.fromARGB(195, 35, 104, 168),fontSize: 20))),
                  child: Container(padding: const EdgeInsets.all(40),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    
                      children: [
                      new TextFormField(
                          decoration:
                              new InputDecoration(labelText: "Enter email"),
                          keyboardType: TextInputType.emailAddress),
                      new TextFormField(
                        decoration: new InputDecoration(labelText: "Enter password"),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),Padding(padding: const EdgeInsets.only(top: 24),),
                       new MaterialButton(onPressed:()=>{} ,splashColor: Colors.redAccent,color: Colors.cyan,textColor: Colors.white,child: Text("Login"),)
                    ]),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
