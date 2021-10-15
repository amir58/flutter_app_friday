import 'package:flutter/material.dart';
import 'package:flutter_app_friday/compnents.dart';
import 'package:flutter_app_friday/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;
  var formKey = GlobalKey<FormState>();

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  "Login Screen",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // TextFormField(
                //   validator: (value) => emailValidator(value),
                //   textInputAction: TextInputAction.next,
                //   keyboardType: TextInputType.emailAddress,
                //   decoration: InputDecoration(
                //       prefixIcon: Icon(Icons.email),
                //       labelText: "Email",
                //       border: OutlineInputBorder()),
                // ),
                SizedBox(
                  height: 10,
                ),
                myTextFormField(
                  validator: (value) => emailValidator(value),
                  prefixIcon: Icons.email,
                  label: "Email",
                  controller: _emailController,
                ),
                SizedBox(height: 10),
                // TextFormField(
                //   // validator: (value) {
                //   //   return passwordValidator(value);
                //   // },
                //   validator: (value) => passwordValidator(value),
                //   obscureText: _passwordVisible,
                //   keyboardType: TextInputType.emailAddress,
                //   decoration: InputDecoration(
                //       prefixIcon: Icon(Icons.lock),
                //       suffixIcon: IconButton(
                //         icon: Icon(Icons.remove_red_eye_outlined),
                //         onPressed: () {
                //           _passwordVisible = !_passwordVisible;
                //           setState(() {});
                //         },
                //       ),
                //       labelText: "Password",
                //       border: OutlineInputBorder()),
                // ),
                SizedBox(
                  height: 10,
                ),
                myTextFormField(
                  controller: _passwordController,
                  validator: (value) => passwordValidator(value),
                  prefixIcon: Icons.lock,
                  label: "Password",
                  obscureText: _passwordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      _passwordVisible = !_passwordVisible;
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.blue,
                    onPressed: () {
                      // Navigator.pop(context);
                      if (formKey.currentState.validate()) {
                        String email = _emailController.text;
                        print(email);

                        String password = _passwordController.text;
                        print(password);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(email),
                            ));
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  passwordValidator(value) {
    if (value.isEmpty) {
      return "Password required";
    }
    if (value.length < 8) {
      return "Password must be 8 characters and more";
    }
    return null;
  }

  emailValidator(String value) {
    print(value);

    if (value.isEmpty) {
      return "Email required";
    }

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    if (!emailValid) {
      return "Email not valid";
    }

    return null;
  }
}
