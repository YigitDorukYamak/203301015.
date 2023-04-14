import 'package:flutter/material.dart';

import 'const.dart';

class SifremiUnuttum extends StatelessWidget {
  const SifremiUnuttum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Şifremi Unuttum", style: TextStyle(color: kPrimaryColor),
      ),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 30),
            Text(
              "Şifrenizi mi unuttunuz?",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              "Lütfen kayıtlı e-posta adresinizi girin. Size şifrenizi sıfırlamanız için bir bağlantı göndereceğiz.",
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
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Şifre sıfırlama bağlantısı gönderme kodunu burada yazabilirsiniz
              },
              child: Text(
                "Şifremi Sıfırla",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16), backgroundColor: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
