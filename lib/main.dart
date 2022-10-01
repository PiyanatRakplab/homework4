import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.myColor,
      ),
      home: const MyHomePage(title: 'OLYMPIC BOXING SCORING'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/logo.png', width: 250.0),
            const Text('Women Light(57-60kg)Semi-final',
                style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black,
                    fontSize: 16.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ Icon(
                Icons.person,
                // รูปไอคอน
                size: 80.0, color:Colors.red,
              ),
                Column(
                  children: [
                    Row(
                      children:[
                        Image.asset('assets/images/flag_ireland.png', width: 40.0),
                        const Text('IRELAND'),
                      ],

                    ),
                    const Text('HARRINGTON Kellie Anne'),
                  ],

                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ Icon(
                Icons.person,
                // รูปไอคอน
                size: 80.0, color:Colors.blue,
              ),
                Column(
                  children: [
                    Row(
                      children:[
                        Image.asset('assets/images/flag_thailand.png', width: 40.0),
                        const Text('THAILAND'),
                      ],

                    ),
                    const Text('SEESONDEE Sudaporn'),
                  ],

                ),

              ],

            ),
            Row(
              children: [
                Expanded(child: Container(color:Colors.red ,height: 5,)),
                Expanded(child: Container(color:Colors.blue ,height: 5,)),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(padding:const EdgeInsets.all(30.0),

                    child: ElevatedButton(
                      onPressed: () {  },

                      child: Icon(
                        Icons.person,
                        // รูปไอคอน
                        size: 25.0,
                      ),
                    )),
                Padding(padding:const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                      onPressed: () {  },
                      child: Icon(
                        Icons.person,
                        // รูปไอคอน
                        size: 25.0,
                      )),

                ),

              ],

            ),


          ],

        ),
      ),
    );
  }
}
class Palette {
  static const MaterialColor myColor = const MaterialColor(
    0xff8b2030,
    const <int, Color>{
      50: const Color(0xff7d1d2b), //10%
      100: const Color(0xff6f1a26), //20%
      200: const Color(0xff611622), //30%
      300: const Color(0xff53131d), //40%
      400: const Color(0xff461018), //50%
      500: const Color(0xff380d13), //60%
      600: const Color(0xff2a0a0e), //70%
      700: const Color(0xff1c060a), //80%
      800: const Color(0xff0e0305), //90%
      900: const Color(0xff000000), //100%
    },
  );
}