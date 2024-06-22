import 'package:agent/components/view_field.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'الملف الشخصي',
                style: TextStyle(
                  fontSize: 34,
                  color: Color(0xFF05885C),
                  fontFamily: "IBM",
                  fontWeight: FontWeight.bold,
                ),
              ),
               const SizedBox(
                height: 30,
              ),
              Container(
                width: 170.0,
                height: 170.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 4.0,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/momknspace green.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ViewField(
                labelText: "الاسم",
                info: "كيرلس",
              ),
              ViewField(
                labelText: "كود الموظف",
                info: "600",
              ),
              ViewField(
                labelText: "المؤسسة",
                info: "الاهلي ممكن",
              ),
              ViewField(
                labelText: "كود المؤسسة",
                info: "41",
              ),
              ViewField(
                labelText: "كود مشرف الؤسسة",
                info: "511",
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'powered by',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              Image.asset(
                "assets/images/momknspace green.png",
                width: 70,
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
