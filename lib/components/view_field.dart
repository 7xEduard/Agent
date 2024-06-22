import 'package:flutter/material.dart';

class ViewField extends StatelessWidget {
  const ViewField({super.key, required this.labelText, this.info});

  final String labelText;
  final String? info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "$info ",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 22,
                fontFamily: "IBM",
              ),
            ),
            Text(
              ": $labelText",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "IBM",
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
       const Row(
         children: [
            Expanded(
              child: Divider(
                color: Color(0xFFF08222),
                thickness: 2.5,
              ),
            ),
         ],
       ),
      ],
    );
  }
}
