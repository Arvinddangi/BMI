import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1F2224),
        accentColor: Colors.yellow.shade900,
        scaffoldBackgroundColor: Color(0xFF6FC2F7),
      ),
      home: InputPage(),
    );
  }
}























// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     title: 'Navigation Basics',
//     initialRoute: '/',
//     routes: {
//       '/': (context) => FirstRoute(),
//       '/First': (context) => SecondRoute(),
//       '/Second': (context) => Third(),
//
//     },
//   ));
// }

// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Third()),
//             );
//             // Navigator.pop(context);
//           },
//           child: Text('ek bar or dabaa'),
//         ),
//       ),
//     );
//   }
// }
//
// class Third extends StatefulWidget {
//   const Third({Key? key}) : super(key: key);
//
//   @override
//   _ThirdState createState() => _ThirdState();
// }
//
// class _ThirdState extends State<Third> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Fourth()),
//             );
//             // Navigator.pop(context);
//           },
//           child: Text('fir se daba'),
//         ),
//       ),
//
//
//     );
//   }
// }
//
// class Fourth extends StatefulWidget {
//   const Fourth({Key? key}) : super(key: key);
//
//   @override
//   _FourthState createState() => _FourthState();
// }
//
// class _FourthState extends State<Fourth> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('4'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: (){
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Fifth()),);
//           }, child: null,
//         ),
//       ),
//
//     );
//   }
// }
// class Fifth extends StatefulWidget {
//   const Fifth({Key? key}) : super(key: key);
//
//   @override
//   _FifthState createState() => _FifthState();
// }
//
// class _FifthState extends State<Fifth> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('5th'),),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: (){
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Fourth()),);
//           }, child: null,
//         ),
//       ),
//     );
//
//   }
// }


























