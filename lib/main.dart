import 'package:flutter/material.dart';
import 'package:flutter_application_777/widget/app.dart';

void main() {
  const app = App();
  runApp(app);
  // runApp(MySecondTestClass());
}

// class MySecondTestClass extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyFirstAppState();
//   }
// }
// class _MyFirstAppState extends State<MySecondTestClass> {
//   late bool _loading;
//   late double _progressValue;

//    @override
//    void initSatate () {
//     _loading = false;
//     _progressValue = 0.0;
//     super.initState();
//    }
//    @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.amberAccent,
//         appBar: AppBar(
//           backgroundColor: Colors.blue[600],
//           title: const Text('My toolbar'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             child: _loading ? Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const <Widget>[
//                 LinearProgressIndicator(
//                   value: 23,
//                   color: Colors.blue,
//                 ),
//                 Text('test $progressValue',
//                   style: TextStyle(color: Colors.blue, fontSize: 20),
//                 )
//               ],
//             ) : const Text(
//                   'Press button from the downlooad',
//                   style: TextStyle(color: Colors.blue, fontSize: 20),
//                 )
//           ),
//         ),
//         floatingActionButton: const FloatingActionButton(
//           onPressed: null,
//           backgroundColor: Colors.blue,
//           child: Icon(Icons.cloud_download),
//         ),
//       ),
//     );
//   }
// }


// class MyFeastTestClass extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.amberAccent,
//         appBar: AppBar(
//           backgroundColor: Colors.blue[600],
//           title: const Text('My toolbar'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const <Widget>[
//                 LinearProgressIndicator(
//                   value: 23,
//                   color: Colors.blue,
//                 ),
//                 Text(
//                   '23%',
//                   style: TextStyle(color: Colors.blue, fontSize: 20),
//                 )
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: const FloatingActionButton(
//           onPressed: null,
//           backgroundColor: Colors.blue,
//           child: Icon(Icons.cloud_download),
//           // child: Text('Press my',
//           // textAlign: TextAlign.center,
//           //     style: TextStyle(
//           //       color: Colors.white
//           //     )),
//         ),
//       ),
//     );
//   }
// }
