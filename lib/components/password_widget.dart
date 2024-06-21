import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String? hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  const PasswordField(
      {super.key,
      this.hintText,
      this.onChanged,
      this.validator,
      required this.controller,
      this.keyboardType = TextInputType.text});

  @override
  // ignore: library_private_types_in_public_api
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "${widget.hintText}",
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
          controller: widget.controller,
          validator: widget.validator,
          onChanged: widget.onChanged,
          obscureText: _isHidden,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                _isHidden ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _isHidden = !_isHidden;
                });
              },
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF08222),
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
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: Color(0xFF05885C),
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: "ادخل كلمة السر",
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
