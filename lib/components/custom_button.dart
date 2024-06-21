import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.labelText, this.onTap});
  final String? labelText;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        width: 190,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFF015136), Color(0xFFF08222)],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child:  Center(
          child: Text(
            "$labelText",
            style:const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: "Rubik",
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
