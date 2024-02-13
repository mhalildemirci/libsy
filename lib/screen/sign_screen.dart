import 'package:flutter/material.dart';
import 'package:libsy/screen/login_screen.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color nameBorderColor = Colors.black;
  Color emailBorderColor = Colors.black;
  Color passwordBorderColor = Colors.black;
  bool showErrorBorderEmail = false;
  bool showErrorBorderPassword = false;
  bool showErrorBorderName = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        child: ListView(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Ad Soyad',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              showErrorBorderEmail ? Colors.red : Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              showErrorBorderName ? Colors.red : Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (text) {
                    setState(() {
                      showErrorBorderEmail = false;
                    });
                  },
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: emailController,
                  obscureText: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: showErrorBorderPassword
                              ? Colors.red
                              : Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              showErrorBorderEmail ? Colors.red : Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (text) {
                    setState(() {
                      showErrorBorderPassword = false;
                    });
                  },
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: showErrorBorderPassword
                              ? Colors.red
                              : Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: showErrorBorderPassword
                              ? Colors.red
                              : Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (text) {
                    setState(() {
                      showErrorBorderPassword = false;
                    });
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Giriş butonuna tıklandığında yapılacak işlemler
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty ||
                        nameController.text.isEmpty) {
                      setState(() {
                        showErrorBorderEmail = emailController.text.isEmpty;
                        showErrorBorderPassword =
                            passwordController.text.isEmpty;
                        showErrorBorderName = nameController.text.isEmpty;
                      });
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    }
                  },
                  child: Text(
                    'Kayit Ol',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignScreen(),
  ));
}
