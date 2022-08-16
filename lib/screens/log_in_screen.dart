import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widget/text_field_input.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String imagePath = 'asset/image/ic_instagram.svg';

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                flex: 2,
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
              const SizedBox(height: 24,),
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    color: blueColor
                  ),
                  child: const Text('Log In',style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              Flexible(flex: 2,child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: const Text("Don't you have an account?  ", style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: const Text('Sign Up', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
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
