import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  
  final String label;
  final TextInputType keyboardType;
  final bool obscureText,borderEnabled;
  final double fontSize;
  final void Function(String text) onChanged;
  final String Function(String text) validator;

  const InputText({
    Key key, 
    this.label        = '',
    this.keyboardType = TextInputType.text,
    this.obscureText  = false,
    this.borderEnabled= true,
    this.fontSize = 15,
    this.onChanged,
    this.validator,
     }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
            keyboardType: this.keyboardType,
            obscureText: this.obscureText,
            onChanged: this.onChanged,
            validator:this.validator ,
            style: TextStyle(fontSize: this.fontSize),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5 ),
              enabledBorder: this.borderEnabled ?UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent[200]
                )
              ):InputBorder.none,
              labelText: this.label,
              labelStyle: TextStyle(
                 color: Colors.blue[900], 
                 fontWeight: FontWeight.w500)),
          );
  }
}