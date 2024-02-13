import 'package:flutter/material.dart';

class PassRenewalScreen extends StatefulWidget {
  const PassRenewalScreen({super.key});

  @override
  State<PassRenewalScreen> createState() => _PassRenewalScreenState();
}

TextEditingController emailController = TextEditingController();
Color emailBorderColor = Colors.black;
bool showErrorBorderEmail = false;

class _PassRenewalScreenState extends State<PassRenewalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.cover)),
            child: ListView(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
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
                        ElevatedButton(
                          onPressed: () {
                            // Giriş butonuna tıklandığında yapılacak işlemler
                            if (emailController.text.isEmpty) {
                              setState(() {
                                showErrorBorderEmail =
                                    emailController.text.isEmpty;
                              });
                            } else {
                              // Giriş işlemleri
                            }
                          },
                          child: Text(
                            'Sifre Sifirla',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ]))
            ])));
  }
}
