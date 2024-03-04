import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyBoardType;

  const CommonTextField(
      {super.key,
        required this.controller,
        required this.hintText,
        required this.icon,
        this.obscureText= false,
        this.keyBoardType= TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType: keyBoardType,
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(
        color: Colors.red,
      ),
      decoration: InputDecoration(
        label: Text(hintText),
        // labelText: "Email",

        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: Icon(icon),
        // border: OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.yellow,
              width: 3,
            ),
            // borderRadius: BorderRadius.horizontal(
            //   left: Radius.circular(10),
            //
            // )
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
              bottom: Radius.circular(10),
            )),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.black,
            width: 3,
          ),
        ),
      ),
      validator: (value){
        if(value==null || value.isEmpty){
          return "Enter your $hintText";
        }
        return null;
      },
    );
  }
}