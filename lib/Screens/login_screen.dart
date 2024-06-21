import 'package:agent/components/custom_button.dart';
import 'package:agent/components/custom_text_field.dart';
import 'package:agent/components/password_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> logInKey = GlobalKey();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Form(
                key: logInKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80),
                    const Center(
                      child: Text(
                        'مـرحبــــا بــــــك',
                        style: TextStyle(
                          fontFamily: "IBM",
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                          color: Color(0xFF05885C),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFF05885C),
                            fontFamily: "IBM",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    CustomTextField(
                      controller: emailAddressController,
                      onChanged: (data) {},
                      hintText: "الإسم او الإيميل",
                      validator: emailValidate,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 15),
                    PasswordField(
                      controller: passwordController,
                      hintText: 'كلمة السر',
                      onChanged: (data) {},
                      validator: passwordValidate,
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "هل نسيت كلمة السر؟",
                        style: TextStyle(
                          color: Color(0xFF05885C),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: CustomButton(
                        onTap: () async {},
                        labelText: 'تسجيل الدخول',
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFF08222),
                            thickness: 2.5,
                          ),
                        ),
                        Text(
                          "  او  ",
                          style: TextStyle(
                            color: Color(0xFF6c757d),
                            fontFamily: "IBM",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFFF08222),
                            thickness: 2.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'تسجيل الدخول عبر حساب جوجل',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF05885C),
                            fontFamily: "IBM",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          'assets/images/icons8-google-360.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    const Center(
                      child: Text(
                        'powered by',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/momknspace green.png",
                        width: 70,
                        height: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email must not be empty.';
    } else if (!EmailValidator.validate(value)) {
      return 'Email syntax is not valid.';
    }
    return null;
  }

  String? passwordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password must not be empty.';
    } else if (value.length < 6) {
      return 'Password must be at least 6 digits.';
    }
    return null;
  }

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
