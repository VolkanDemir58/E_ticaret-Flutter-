import 'package:flutter/material.dart';

class ContextPage extends StatelessWidget {
  const ContextPage({Key? key}) : super(key: key);

  Widget _buildText() {
    return Container(
      height: 25,
      child: Wrap(
        children: [
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'İLETİŞİM BİLGİLERİ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.black),
            title: Text(
              'Telefon:',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
            subtitle: Text(
              '053********',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
          SizedBox(height: 40),
          ListTile(
            leading: Icon(Icons.mail, color: Colors.black),
            title: Text(
              'E-posta:',
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text(
              'volkan1@gmail.com',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
          SizedBox(height: 40),
          ListTile(
            leading: Icon(Icons.info_outlined, color: Colors.black),
            title: Text(
              'Sosyal Medya:',
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text(
              '@Volcano',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Context Page'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            _buildText(),
            _buildContactInfo(),
          ],
        ),
      ),
    );
  }
}
