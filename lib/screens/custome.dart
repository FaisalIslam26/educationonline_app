// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class Custom extends StatefulWidget {
//   const Custom({Key? key}) : super(key: key);

//   @override
//   State<Custom> createState() => _CustomState();
// }

// class _CustomState extends State<Custom> {
//   bool _value = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Circle CheckBox"),
//       ),
//       body: Center(
//           child: InkWell(
//         onTap: () {
//           setState(() {
//             _value = !_value;
//           });
//         },
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.redAccent),
//                   ),
//                   child: _value
//                       ? Icon(
//                           Icons.circle,
//                           size: 30.0,
//                           color: Colors.red,
//                         )
//                       : Icon(
//                           Icons.radio_button_off_rounded,
//                           size: 30.0,
//                           color: Colors.white,
//                         ),
//                 ),
//                 Text(
//                   'Flutter Development',
//                   style: TextStyle(color: Colors.black, fontSize: 30),
//                 )
//               ],
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
