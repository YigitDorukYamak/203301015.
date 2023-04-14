import 'package:flutter/material.dart';

import '../../login/const.dart';


class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({Key? key}) : super(key: key);

  @override
  _ProfileSettingsPageState createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  String _name = "yigit doruk";
  String _email = "yigit@gmail.com";
  String _phoneNumber = "555-555-55-55";
  bool _notificationsEnabled = true;
  bool _locationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil ve Ayarlar",style: TextStyle(color: kPrimaryColor),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profil Bilgileri",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Ad Soyad"),
              subtitle: Text(_name),
              trailing: Icon(Icons.edit),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-posta Adresi"),
              subtitle: Text(_email),
              trailing: Icon(Icons.edit),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Telefon Numarası"),
              subtitle: Text(_phoneNumber),
              trailing: Icon(Icons.edit),
              onTap: () {

              },
            ),
            const SizedBox(height: 32),
            Text(
              "Ayarlar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text("Bildirimler"),
              subtitle: Text("Bildirimler açık/kapalı"),
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: Text("Konum"),
              subtitle: Text("Konum paylaşımı açık/kapalı"),
              value: _locationEnabled,
              onChanged: (value) {
                setState(() {
                  _locationEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
