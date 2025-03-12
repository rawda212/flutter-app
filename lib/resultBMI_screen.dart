// import 'package:flutter/material.dart';
//
// class ResultbmiScreen extends StatelessWidget {
//   final int age;
//   final bool isMale;
//   final double result;
//   const ResultbmiScreen({super.key,required this.age,required  this.isMale,required this.result});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(title: Text("BMI Result"),  backgroundColor: Colors.deepPurple[200],centerTitle: true),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "age:$age",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "gender:${isMale? "Male":"Female"}",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "BMI:${result.toStringAsFixed(2)}",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }


import 'package:flutter/material.dart';

class ResultbmiScreen extends StatelessWidget {
  final int age;
  final bool isMale;
  final double result;

  const ResultbmiScreen({super.key, required this.age, required this.isMale, required this.result});

  String getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }

  Color getBmiColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return Colors.green;
    } else if (bmi >= 25 && bmi < 29.9) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Result"), backgroundColor: Colors.deepPurple[200], centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Age: $age", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text("Gender: ${isMale ? "Male" : "Female"}", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text(
              "BMI: ${result.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: getBmiColor(result)),
            ),
            Text("Category: ${getBmiCategory(result)}", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
