import 'package:flutter/material.dart';
import 'package:gymapp/screen/home_screen.dart';
import 'package:gymapp/utils/app_styles.dart';
import 'package:gymapp/widgets/app_drawer.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 37, 37),
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: Colors.white),
      //   title: Text(
      //     "Gym App",
      //     style: Theme.of(context).textTheme.titleMedium,
      //   ),
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      body: Center(
          // child: Column(children: [
          //   Container(
          //       height: 100,
          //       width: 100,
          //       child: Image.asset('assets/images/logo-no-background.png')),
          // Container(
          //   // color: Theme.of(context).primaryColor,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(15),
          //     color: Theme.of(context).primaryColor,
          //   ),
          //   height: 300,
          //   width: 350,
          //   child: Form(
          //     child: SingleChildScrollView(
          //       child: Column(
          //         children: [
          //           Card(child: TextFormField()),
          //           TextFormField(),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image(
                    image: AssetImage('assets/images/logo-no-background.png'),
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          icon: Icon(Icons.person),
                          labelText: "Username"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          icon: Icon(Icons.lock),
                          labelText: "Password"),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        // fillColor: MaterialStatePropertyAll(Colors.white),
                        value: isChecked,
                        onChanged: (_) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                        15,
                      ))),
                      child: Text(
                        "Login",
                        style: Styles.textStyle.copyWith(
                          //fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ))
          //]
          ),
      // drawer: Drawer(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   child: myDrawer(),
      // ),
    );
  }
}
