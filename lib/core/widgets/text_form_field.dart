import 'package:flutter/material.dart';

class TextFormFieldApp extends StatelessWidget {
  final IconData icon;
  final String hint;  
  final Function(String) validator;
  final double horizontalP;
  final double verticalP;
  final bool obscureText;
  TextFormFieldApp({Key key,this.icon,this.hint,this.validator,this.horizontalP,this.verticalP,this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalP?? 0,vertical: verticalP?? 10),          
          child: TextFormField(
          obscureText: obscureText??false,          
          decoration: InputDecoration(
                              suffixIcon: Icon(icon,color: Colors.red,),
                              hintText: hint,
                              contentPadding: EdgeInsets.only(left: 14.0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red, width: 2.0),
                                  borderRadius: BorderRadius.circular(16),                           
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red, width: 2.0),
                                  borderRadius: BorderRadius.circular(16),                           
                              ),
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Colors.white,                              
                              ),
          validator: validator,          
        
      ),
    );
  }
}
