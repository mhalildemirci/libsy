import 'package:flutter/material.dart';
import 'package:libsy/screen/Home_Page.dart';
import 'package:libsy/screen/passRenewal_screen.dart';
import 'package:libsy/screen/sign_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool showErrorBorderEmail = false;
  bool showErrorBorderPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.2), // Ekranın yüzde 20'si kadar boşluk
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: showErrorBorderEmail
                                ? Colors.red
                                : Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: showErrorBorderEmail
                                ? Colors.red
                                : Colors.white),
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
                          passwordController.text.isEmpty) {
                        setState(() {
                          showErrorBorderEmail = emailController.text.isEmpty;
                          showErrorBorderPassword =
                              passwordController.text.isEmpty;
                        });
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                        // Giriş işlemleri
                      }
                    },
                    child: Text(
                      'Giriş',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PassRenewalScreen()));
                      print('Şifremi Unuttum tıklandı.');
                    },
                    child: Text(
                      'Şifremi Unuttum',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignScreen()));
                      print('Kayıt Ol tıklandı.');
                    },
                    child: Text(
                      'Kayıt Ol',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
