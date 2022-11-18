// Container(
//       height: height * 0.15,
//       width: width * 0.80,
//       child: TextFormField(
//         validator: (value) {
//           if (value!.isEmpty) {
//             return "O campo está inválido!";
//           }
//         },
//         controller: inputController,
//         keyboardType: inputType,
//         decoration: InputDecoration(
//           hintText: label,
//           hintStyle: TextStyle(
//             color: Color.fromARGB(255, 196, 196, 196),
//           ),
//           contentPadding: EdgeInsets.only(bottom: 7.0, left: 5.0),
//           filled: true,
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(borderTopLeft),
//                 topRight: Radius.circular(borderTopRight),
//                 bottomLeft: Radius.circular(borderBottomLeft),
//                 bottomRight: Radius.circular(borderBottomRight),
//               ),
//               borderSide: BorderSide(
//                   color: Color.fromARGB(255, 255, 91, 53), width: 1)),
//           errorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(borderTopLeft),
//                 topRight: Radius.circular(borderTopRight),
//                 bottomLeft: Radius.circular(borderBottomLeft),
//                 bottomRight: Radius.circular(borderBottomRight),
//               ),
//               borderSide: BorderSide(
//                   color: Color.fromARGB(255, 255, 91, 53), width: 1)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(borderTopLeft),
//                 topRight: Radius.circular(borderTopRight),
//                 bottomLeft: Radius.circular(borderBottomLeft),
//                 bottomRight: Radius.circular(borderBottomRight),
//               ),
//               borderSide: BorderSide(
//                   color: Color.fromARGB(255, 255, 91, 53), width: 1)),
//           focusedErrorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(borderTopLeft),
//                 topRight: Radius.circular(borderTopRight),
//                 bottomLeft: Radius.circular(borderBottomLeft),
//                 bottomRight: Radius.circular(borderBottomRight),
//               ),
//               borderSide: BorderSide(
//                   color: Color.fromARGB(255, 255, 91, 53), width: 1)),
//           fillColor: Color.fromARGB(255, 87, 87, 87),
//         ),
//         style: TextStyle(
//             height: height * 0.002,
//             fontSize: width * 0.05,
//             color: Color.fromARGB(255, 196, 196, 196)),
//       ),
//     );