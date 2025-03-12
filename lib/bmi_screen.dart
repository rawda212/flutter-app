// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:pro/resultBMI_screen.dart';
//
// class BmiScreen extends StatefulWidget {
//   const BmiScreen({super.key});
//
//   @override
//   State<BmiScreen> createState() => _BmiScreenState();
// }
//
// class _BmiScreenState extends State<BmiScreen> {
//   double height = 150;
//   int weight = 50;
//   int age=20;
//   bool isMale=true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("BMI CALCULATOR"),
//         centerTitle: true,
//         backgroundColor: Colors.deepPurple[200],
//       ),
//       body: Column(
//         spacing: 15,
//         children: [
//           Expanded(
//
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 spacing: 20,
//                 children: [
//                   Expanded(
//                     child: GestureDetector(
//               onTap: (){
//                 setState(() {
//                   isMale:true;
//                 });
//     },
//                       child: Container(
//                         decoration: BoxDecoration(
//
//                           color: isMale? Colors.blue:Colors.grey[300],
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Column(
//                           spacing: 15,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.male, size: 70),
//                             SizedBox(height: 10),
//                             Text(
//                               "MALE",
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: (){
//                         setState(() {
//                           isMale:false;
//                         });
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: isMale?Colors.grey[300]:Colors.blue,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.female, size: 70),
//                             SizedBox(height: 10),
//                             Text(
//                               "FEMALE",
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.grey[300],
//                   borderRadius: BorderRadius.circular(20)
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   spacing: 15,
//                   children: [
//                     Text(
//                       "Height",
//                       style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.baseline,
//
//                       textBaseline: TextBaseline.alphabetic,
//
//                       children: [
//                         Text(
//                           "${height.round()}",
//                           style: TextStyle(
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           "CM",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Slider(
//                       value: height,
//                       min: 80,
//                       max: 220,
//                       onChanged: (value) {
//                         print(value);
//                         setState(() {
//                           height = value;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 spacing: 20,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration:BoxDecoration(
//                         color: Colors.grey[300],
//                         borderRadius: BorderRadius.circular(20)
//                         ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         spacing: 10,
//                         children: [
//                           Text(
//                             "WEIGHT",
//                             style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "$weight",
//                             style: TextStyle(
//                               fontSize: 40,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               FloatingActionButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     weight--;
//                                   });
//                                 },
//                                 mini: true,
//                                 heroTag: 'weight--',
//                                 child: Icon(Icons.remove),
//                               ),
//                               FloatingActionButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     weight++;
//                                   });
//                                 },
//                                 heroTag: 'weight++',
//
//                                 mini: true,
//                                 child: Icon(Icons.add),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       decoration:BoxDecoration(
//                           color: Colors.grey[300],
//                           borderRadius: BorderRadius.circular(20)
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         spacing: 10,
//                         children: [
//                           Text(
//                             "AGA",
//                             style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "$age",
//                             style: TextStyle(
//                               fontSize: 40,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               FloatingActionButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     age--;
//                                   });
//                                 },
//                                 heroTag: 'age--',
//                                 mini: true,
//                                 child: Icon(Icons.remove),
//                               ),
//                               FloatingActionButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     age++;
//                                   });
//                                 },
//                                 heroTag: 'age--',
//
//                                 mini: true,
//                                 child: Icon(Icons.add),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             color: Colors.deepPurple,
//             child: MaterialButton(
//               onPressed: () {
//                 double result=weight/pow(height/100, 2);
//                 print(result);
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultbmiScreen(
//                   age:age,result: result,isMale:isMale
//
//                 )),
//                 );
//
//               },
//               child: Text("CALCULATE", style: TextStyle(color: Colors.white)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pro/resultBMI_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 150;
  int weight = 50;
  int age = 20;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.blue : Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.male, size: 70),
                            SizedBox(height: 10),
                            Text(
                              "MALE",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.grey[300] : Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.female, size: 70),
                            SizedBox(height: 10),
                            Text(
                              "FEMALE",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          " CM",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 80,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  buildCounterCard("WEIGHT", weight, () {
                    setState(() {
                      weight--;
                    });
                  }, () {
                    setState(() {
                      weight++;
                    });
                  }),
                  const SizedBox(width: 20),
                  buildCounterCard("AGE", age, () {
                    setState(() {
                      age--;
                    });
                  }, () {
                    setState(() {
                      age++;
                    });
                  }),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.deepPurple,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Calculating BMI..."),
                    duration: Duration(seconds: 1),
                  ),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultbmiScreen(age: age, result: result, isMale: isMale),
                  ),
                );
              },
              child: const Text("CALCULATE", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCounterCard(String label, int value, VoidCallback decrement, VoidCallback increment) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text("$value", style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: decrement, mini: true, heroTag: '$label--', child: const Icon(Icons.remove)),
                FloatingActionButton(onPressed: increment, mini: true, heroTag: '$label++', child: const Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
