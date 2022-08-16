import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';
import '../widget/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final String imagePath = 'asset/image/ic_instagram.svg';

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _userNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(),
              ),
              //svg image
              SvgPicture.asset(
                imagePath,
                semanticsLabel: 'Instagram Logo',
                height: 64,
                color: Colors.white,
              ),
              const SizedBox(
                height: 64,
              ),
              //Circular widget for display avatar
              Stack(
                children: <Widget>[
                  const CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1660548842498-852ef7793ae2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80')),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              TextFieldInput(
                  controller: _userNameController,
                  hintText: 'User Name',
                  icon: const Icon(Icons.drive_file_rename_outline),
                  textInputType: TextInputType.text,
                  isObscureText: false),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  controller: _emailController,
                  hintText: 'Email',
                  icon: const Icon(Icons.email),
                  textInputType: TextInputType.emailAddress,
                  isObscureText: false),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  controller: _passwordController,
                  hintText: 'Password',
                  icon: const Icon(Icons.password),
                  textInputType: TextInputType.visiblePassword,
                  isObscureText: true),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  controller: _bioController,
                  hintText: 'Bio',
                  icon: const Icon(Icons.person),
                  textInputType: TextInputType.text,
                  isObscureText: false),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      color: blueColor),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: const Text(
                      "Don't you have an account?  ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
