import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hintText,
      this.onChanged,
      this.validator,
      required this.controller,
      this.keyboardType = TextInputType.text});
  final String? hintText;

  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "$hintText",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: "IBM",
          ),
        ),
        const SizedBox(height: 3,),
        TextFormField(
          textDirection: TextDirection.rtl,
          cursorColor: const Color(0xFF05885C),
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:const BorderSide(
                color: Color(0xFF05885C),
                width: 2.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: Colors.red,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF08222),//Color(0xFF05885C),
                width: 2.0,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: 'ادخل النص هنا',
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontFamily: "IBM",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
