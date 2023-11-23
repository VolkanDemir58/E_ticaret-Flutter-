import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String selectedTheme = 'Aydınlık';
  String selectedLanguage = 'Türkçe';

  void handleThemeChange(String? value) {
    setState(() {
      selectedTheme = value!;
    });

    if (selectedTheme == 'Aydınlık') {
      // Koyu tema seçildiğinde yapılacak işlemler
      // Uygulamanın temasını koyu olarak ayarlayabilirsiniz
    } else {
      // Aydınlık tema seçildiğinde yapılacak işlemler
      // Uygulamanın temasını aydınlık olarak ayarlayabilirsiniz
    }
  }

  void handleLanguageChange(String? value) {
    setState(() {
      selectedLanguage = value!;
    });
    // Dil değişikliğini işleyen kodu buraya ekleyin
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              title: Text(
                'Bildirimler',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {
                  // Bildirimlerin açık/kapalı durumunu işleyen kodu buraya eklemem lazım
                },
              ),
            ),
          ),
          SizedBox(height: 30),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(
                'Tema',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: DropdownButton<String>(
                value: selectedTheme,
                onChanged: handleThemeChange,
                items: <String>['Koyu', 'Aydınlık']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 30),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(
                'Dil',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: DropdownButton<String>(
                value: selectedLanguage,
                onChanged: handleLanguageChange,
                items: <String>['Türkçe', 'İngilizce', 'Almanca']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
