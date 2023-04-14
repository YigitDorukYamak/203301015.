import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yigi/login/sifre.dart';

import 'package:yigi/pages/main_page.dart';


import 'const.dart';
import 'kayıt.dart';


class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "GİRİŞ YAP",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email Adresi",
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Lütfen bir email adresi giriniz";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Lütfen bir şifre giriniz";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SifremiUnuttum()),
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Şifremi Unuttum",
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (Form.of(context)!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  }
                },
                child: Text(
                  "Giriş Yap",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: kPrimaryColor,
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()),
                  );
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Hesabın yok mu? ",
                    style: Theme.of(context).textTheme.bodyLarge!,
                    children: [
                      TextSpan(
                        text: "Kayıt Ol",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                child: Text(
                  "Üye Olmadan Devam Et",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.black),

                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
