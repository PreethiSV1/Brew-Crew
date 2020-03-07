import 'package:flutter/material.dart';
import 'package:brew_crew/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  String _currentName;
  String _currentSugar;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Update your brew settings',
          style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height : 20.0),
          TextFormField(
            decoration: textInputDecoration,
            validator: (value) => value.isEmpty ? 'Please enter a name' : null,
            onChanged: (value) {
              setState(() {
                _currentName = value;
              });
            },
          ),
          SizedBox(height : 20.0),
          // dropdown
          DropdownButtonFormField(
            decoration: textInputDecoration,
            value: _currentSugar ?? '0',
            items: sugars.map((sugar) {
              return DropdownMenuItem(
                value: sugar,
                child: Text('$sugar sugars'),
              );
            }).toList(),
            onChanged: (String value) {
              setState(() {
                _currentSugar = value;
              });
            },
          ),
          SizedBox(height : 20.0),
          // slider
          Slider(
            min: 100.0,
            max: 900.0,
            activeColor: Colors.brown[_currentStrength ?? 100],
            inactiveColor: Colors.brown[_currentStrength ?? 100],
            value: (_currentStrength ?? 100).toDouble(),
            divisions: 8,
            onChanged: (double value) {
              setState(() {
                _currentStrength = value.round() ;
              });
            },
          ),
          SizedBox(height : 20.0),
          // button
          RaisedButton(
            color: Colors.pink[400],
            onPressed: () async {
              print(_currentName);
              print(_currentStrength);
              print(_currentSugar);
            },
            child: Text('Update', style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
