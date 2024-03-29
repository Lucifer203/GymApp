import 'package:flutter/material.dart';
import 'package:gymapp/providers/workouts.dart';
import 'package:provider/provider.dart';
import './screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        //  MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(
        //       create: (_) => WorkOuts(),
        //     ),
        //   ],
        //   child:
        ChangeNotifierProvider(
            create: (context) => WorkOuts(),
            builder: (context, child) => MaterialApp(
                  title: 'Flutter Demo',
                  theme: ThemeData(
                      //colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
                      useMaterial3: true,
                      primaryColor: Color.fromARGB(229, 13, 12, 12),
                      textTheme: TextTheme(
                          titleMedium: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ))
                      // appBarTheme: AppBarTheme(color: Colors.black87),
                      ),
                  //home: "/",
                  initialRoute: "/",
                  routes: {
                    "/": (context) => LoginScreen(),
                    LoginScreen.routeName: (context) => LoginScreen(),
                  },
                ))

        //)
        ;
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
