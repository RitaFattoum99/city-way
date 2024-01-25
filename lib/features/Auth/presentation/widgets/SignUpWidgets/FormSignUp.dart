import 'package:city_way/core/resource/color_manger.dart';
import 'package:city_way/core/util/btnInfiniteWidth.dart';
import 'package:city_way/core/util/enum.dart';
import 'package:city_way/features/Auth/presentation/widgets/Text_Form_Field_Widget.dart';
import 'package:flutter/material.dart';

class FormSignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();
  FormSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/image/logo.png'),
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormFieldWidget(
                controller: _nameController,
                name: 'User Name',
                icon: Icons.person,
                type: FieldType.text,
              ),
              TextFormFieldWidget(
                controller: _emailController,
                name: 'E-mail',
                icon: Icons.email,
                type: FieldType.text,
              ),
              TextFormFieldWidget(
                controller: _phoneController,
                name: 'Phone Number',
                icon: Icons.phone,
                type: FieldType.number,
              ),
              TextFormFieldWidget(
                controller: _passwordController,
                name: 'password',
                icon: Icons.lock,
                type: FieldType.password,
              ),
              TextFormFieldWidget(
                controller: _confirmController,
                name: 'Confirm Password',
                icon: Icons.lock,
                type: FieldType.password,
              ),
            ],
          ),
        ),
        Btn(
          onPressed: signUp,
          text: 'Sign up',
          color: AppColorManger.mainAppColor,
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account?'),
            GestureDetector(
              onTap: () {},
              child: Text(
                'sign in',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColorManger.secondaryAppColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void signUp() {}
