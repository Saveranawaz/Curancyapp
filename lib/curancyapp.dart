// import 'package:flutter/material.dart';
//
// class CurrencyConverter extends StatefulWidget {
//   @override
//   _CurrencyConverterState createState() => _CurrencyConverterState();
// }
//
// class _CurrencyConverterState extends State<CurrencyConverter> {
//   final TextEditingController usdController = TextEditingController();
//   final TextEditingController priceController = TextEditingController();
//   double result = 0.0;
//
//   void convertCurrency() {
//     double? usd = double.tryParse(usdController.text);
//     double? price = double.tryParse(priceController.text);
//
//     if (usd != null && price != null) {
//       setState(() {
//         result = usd * price;
//       });
//     } else {
//       setState(() {
//         result = 0.0; // or show an error message here
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Currency Converter (USD to PKR)'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             // Container 1: Price of 1 USD
//             Container(
//               padding: EdgeInsets.all(10),
//               child: TextField(
//                 controller: priceController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Price of 1 USD in PKR',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Container 2: USD to convert
//             Container(
//               padding: EdgeInsets.all(10),
//               child: TextField(
//                 controller: usdController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Amount in USD',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Button to convert currency
//             Center(
//               child: ElevatedButton(
//                 onPressed: convertCurrency,
//                 child: Text('Convert'),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Container 3: Result
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Text(
//                 'Result: ${result.toStringAsFixed(2)} PKR',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }