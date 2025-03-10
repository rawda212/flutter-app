import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Login"),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Form(
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
                    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                ).hasMatch(value!);

                if(value.isEmpty){
                  return "Please Enter Email";
                }else if(emailValid==false) {
                  return "Email format must be valid";
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
                if(value!.isEmpty){
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
                      isVisible=!isVisible;
                    });
                  },
                  icon: Icon(
                      isVisible ? Icons.visibility:Icons.visibility_off,),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity ,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(25)
              ),
            child: MaterialButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print(emailController.text);
                    print(passwordController.text);
                  }
                },
            child: Text("LOGIN",style: TextStyle(
              color: Colors.white,
            ),),)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an acount ?"),
                TextButton(onPressed: (){}, child: Text("Register Now",style: TextStyle(color: Colors.lightBlue),))
              ],
            )
          ],
        ),
        ),
      ),
      ),
    );
  }
}
