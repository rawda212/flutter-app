// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:pro/dio/api_provider.dart';
// import 'package:pro/dio/register_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   bool isVisible = true;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   var formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlue,
//         title: Text("Login"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Form(
//             key: formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "User Login",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 40),
//                 TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   controller: emailController,
//                   validator: (value) {
//                     final bool emailValid = RegExp(
//                       r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
//                     ).hasMatch(value!);
//
//                     if (value.isEmpty) {
//                       return "Please Enter Email";
//                     }
//                     // else if(emailValid==false) {
//                     //   return "Email format must be valid";
//                     // }
//                     return null;
//                   },
//                   onChanged: (value) {
//                     print(value);
//                   },
//                   onFieldSubmitted: (value) {
//                     print(value);
//                   },
//                   decoration: InputDecoration(
//                     labelText: "Email",
//                     prefixIcon: Icon(Icons.email),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   keyboardType: TextInputType.visiblePassword,
//                   controller: passwordController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Please Enter Password";
//                     }
//                     return null;
//                   },
//                   obscureText: isVisible,
//                   onChanged: (value) {
//                     print(value);
//                   },
//                   onFieldSubmitted: (value) {
//                     print(value);
//                   },
//                   decoration: InputDecoration(
//                     labelText: "password",
//                     prefixIcon: Icon(Icons.password),
//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           isVisible = !isVisible;
//                         });
//                       },
//                       icon: Icon(
//                         isVisible ? Icons.visibility : Icons.visibility_off,
//                       ),
//                     ),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.lightBlue,
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   child: MaterialButton(
//                     onPressed: ()  {
//
//                       if (formKey.currentState!.validate()) {
//                         try {
//                           UserCredential userCredential =
//                           await FirebaseAuth.instance
//                               .createUserWithEmailAndPassword(
//                             email: emailController.text,
//                             password: passwordController.text,
//                           );
//
//                           print("User Registered: ${userCredential.user!.email}");
//                           print("User Token: ${userCredential.user!.uid}");
//                           ScaffoldMessenger.of(context).showSnackBar(
//                                     SnackBar(content: Text("Login Successfully")));
//                         }catchError((error) {
//                       //
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(content: Text(error.toString())));
//                       //
//                             });
//                         // } catch (e) {
//                         //   print("Registration Error: $e");
//                         // }
//                         // print(emailController.text);
//                         // print(passwordController.text);
//                         // await ApiProvider()
//                         //     .useLoginEmail(
//                         //       email: emailController.text,
//                         //       password: passwordController.text,
//                         //     )
//                         //     .then((value) {
//                         //       ScaffoldMessenger.of(context).showSnackBar(
//                         //         SnackBar(content: Text("Login Successfully")));
//                         //       }).catchError((error) {
//                         //
//                         //           ScaffoldMessenger.of(context).showSnackBar(
//                         //             SnackBar(content: Text(error.toString())));
//                         //
//                         //       });
//                       }
//                       // final SharedPreferences prefs = await SharedPreferences.getInstance();
//                       // String? tokenfromShared = prefs.getString("token");
//                       // print("====>$tokenfromShared");
//                     },
//                     child: Text("LOGIN", style: TextStyle(color: Colors.white)),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Don't have an acount ?"),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => RegisterScreen(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         "Register Now",
//                         style: TextStyle(color: Colors.lightBlue),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pro/dio/api_provider.dart';
import 'package:pro/dio/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) {
                    final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                    ).hasMatch(value!);

                    if (value.isEmpty) {
                      return "Please Enter Email";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Password";
                    }
                    return null;
                  },
                  obscureText: isVisible,
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          UserCredential userCredential =
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text,
                          );

                          print("User Logged In: ${userCredential.user!.email}");
                          print("User Token: ${userCredential.user!.uid}");
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Login Successfully")),
                          );
                        } catch (error) {  // ✅ تصحيح هنا باستخدام catch بدلاً من catchError
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.toString())),
                          );
                        }

                        // final SharedPreferences prefs = await SharedPreferences.getInstance();
                        // String? tokenfromShared = prefs.getString("token");
                        // print("====>$tokenfromShared");
                      }
                    },
                    child: Text("LOGIN", style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an acount ?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
