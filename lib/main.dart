import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Uas(),
    routes: <String, WidgetBuilder>{
      '/Uas': (BuildContext context) => Uas(),
      '/LuasPersegiPanjang': (BuildContext context) => LuasPersegiPanjang(),
      '/LuasLingkaran': (BuildContext context) => LuasLingkaran(),
      '/Profile': (BuildContext context) => Profile(),
    },
  ));
}

class Uas extends StatelessWidget {
  const Uas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.toc_outlined),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Column(
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/LuasPersegiPanjang');
              },
              title: Text(
                'HITUNG LUAS PERSEGI PANJANG',
                style: TextStyle(
                    color: Colors.purple[300],
                    fontFamily: 'BattlesbridgeDemoRegular',
                    fontSize: 13.0),
              ),
              subtitle:
                  Text('Pilih Untuk Mulai Menghitung Luas Persegi Panjang'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/LuasLingkaran');
              },
              title: Text(
                'HITUNG LUAS LINGKARAN',
                style: TextStyle(
                    color: Colors.purple[300],
                    fontFamily: 'BattlesbridgeDemoRegular',
                    fontSize: 13.0),
              ),
              subtitle: Text('Pilih Untuk Mulai Menghitung Luas Lingkaran'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/Profile');
              },
              title: Text(
                'PROFILE DEVELOPER',
                style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.purple[300],
                    fontFamily: 'BattlesbridgeDemoRegular'),
              ),
              subtitle: Text('Pilih Untuk Melihat Developer'),
            ),
          ),
        ],
      )),
    );
  }
}

class LuasPersegiPanjang extends StatefulWidget {
  const LuasPersegiPanjang({Key? key}) : super(key: key);

  @override
  _LuasPersegiPanjangState createState() => _LuasPersegiPanjangState();
}

class _LuasPersegiPanjangState extends State<LuasPersegiPanjang> {
  final txtpjng = TextEditingController();
  final txtlbr = TextEditingController();

  String result = '';

  getTextInputData() {
    setState(() {
      var panjang = int.parse(txtpjng.text);
      var lebar = int.parse(txtlbr.text);
      var luas = panjang * lebar;
      result = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text("Luas Persegi Panjang"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtpjng,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Panjang'),
                  )),
              Container(
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtlbr,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Lebar'),
                  )),
              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffFFA1C9),
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Hitung'),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(" Luas Persegi Panjang = $result",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}

class LuasLingkaran extends StatefulWidget {
  const LuasLingkaran({Key? key}) : super(key: key);

  @override
  _LuasLingkaranState createState() => _LuasLingkaranState();
}

class _LuasLingkaranState extends State<LuasLingkaran> {
  final txtr = TextEditingController();

  String hasil = '';

  getTextInputData() {
    setState(() {
      var jari = int.parse(txtr.text);
      var luas = jari * jari * 22 / 7;
      hasil = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[300],
          title: Text("Luas Lingkaran"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtr,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Jari-jari'),
                  )),
              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffC7B198),
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Hitung'),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Luas Lingkaran = $hasil",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Developer'),
        backgroundColor: Colors.cyan[200],
      ),
      backgroundColor: Colors.cyan[300],
      body: Center(
          child: ListView(
        children: <Widget>[
          CircleAvatar(
            radius: 400.0,
            backgroundImage: AssetImage('assets/img/Acha-min.jpg'),
          ),
          SizedBox(
            height: 30.0,
            width: 100.0,
            child: Divider(
              color: Colors.orange[200],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.orange[200],
              ),
              title: Text(
                'Nama Lengkap',
                style: TextStyle(
                    color: Colors.orange[200],
                    fontFamily: 'Demo_ConeriaScript',
                    fontSize: 20.0),
              ),
              subtitle: Text('Thasya Ismyanti Novianda'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.amber[300],
              ),
              title: Text(
                'NPM : ',
                style: TextStyle(
                    color: Colors.orange[200],
                    fontFamily: 'Demo_ConeriaScript',
                    fontSize: 20.0),
              ),
              subtitle: Text('2010020109'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.meeting_room_rounded,
                color: Colors.amber[300],
              ),
              title: Text(
                'Kelas : ',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.orange[200],
                    fontFamily: 'Demo_ConeriaScript'),
              ),
              subtitle: Text('5A SI Non Reguler Banjarmasin'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.email_rounded,
                color: Colors.amber[300],
              ),
              title: Text(
                'E-Mail ',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.orange[200],
                    fontFamily: 'Demo_ConeriaScript'),
              ),
              subtitle: Text('thasyacha98@gmail.com'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.orange[200],
              ),
              title: Text(
                'Alamat Rumah',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.orange[200],
                    fontFamily: 'Demo_ConeriaScript'),
              ),
              subtitle: Text('Jl. Simpang Gusti Raya'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.headphones_outlined,
                color: Colors.orange[200],
              ),
              title: Text(
                'Hobby',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.orange[200],
                    fontFamily: 'Demo_ConeriaScript'),
              ),
              subtitle: Text(
                  'Mendengarkan Musik, Menonton Drama Korea, Menonton Film'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.school_outlined,
                color: Colors.amber[300],
              ),
              title: Text(
                'Kampus',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.orange[200],
                    fontFamily: 'Demo_ConeriaScript'),
              ),
              subtitle: Text(
                  'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari Banjarmasin (Uniska)'),
            ),
          ),
        ],
      )),
    );
  }
}
