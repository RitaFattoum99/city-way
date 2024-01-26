import 'package:city_way/core/resource/color_manger.dart';
import 'package:city_way/core/util/btnInfiniteWidth.dart';
import 'package:city_way/core/util/enum.dart';
import 'package:city_way/features/Auth/presentation/pages/SignUp/SignUp_Page.dart';
import 'package:city_way/features/Auth/presentation/widgets/Text_Form_Field_Widget.dart';
import 'package:city_way/features/Auth/presentation/widgets/circle_logo_widget.dart';
import 'package:flutter/material.dart';

class FormSignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  FormSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Positioned(child: CricleLogoWidget(text: 'Sign in')),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormFieldWidget(
                  controller: _nameController,
                  name: 'User Name',
                  icon: Icons.person,
                  type: FieldType.text,
                ),
                TextFormFieldWidget(
                  controller: _passwordController,
                  name: 'password',
                  icon: Icons.lock,
                  type: FieldType.password,
                ),
                const Text("Forgot password? ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Btn(
                        onPressed: signIn,
                        text: 'Sign in',
                        color: AppColorManger.mainAppColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Dont’t have an account?'),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'sign up',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColorManger.secondaryAppColor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Btn(
                          onPressed: QuickRequest,
                          text: 'Quick request',
                          color: AppColorManger.secondaryAppColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void signIn() {}

void QuickRequest() {}
