import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:promilo_task/utils/sized_box.dart';

import '../../blocs/bloc/login_bloc.dart';
import 'widgets/blue_text_below_socialmedia.dart';
import 'widgets/social_media_icons.dart';
import 'widgets/text_above_text_box.dart';
import 'widgets/text_below_socialmedia_icons.dart';
import 'widgets/text_unde_textbox.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _rememberMe = false;

  bool emailTapped = false;
  bool passwordTapped = false;
  bool isLoginButtonEnabled = false;

  void _validateFields() {
    setState(() {
      isLoginButtonEnabled = _isEmailValid() &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();

    emailController.text = "test45@yopmail.com";
    passwordController.text = "Test@123";
    emailController.addListener(_validateFields);
    passwordController.addListener(_validateFields);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "promilo",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state.isLogged) {
            return const Text("Logged");
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  sizedBoxHeight(MediaQuery.of(context).size.height * .06),
                  Center(
                    child: Text(
                      "Hi, Welcome back!",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                            padding: EdgeInsets.fromLTRB(15, 8, 8, 2),
                            child: TextAboveTextBox(
                                text: "Please Sign in to continue")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                errorText: emailTapped && !(_isEmailValid())
                                    ? 'Please enter a valid email'
                                    : null,
                                labelText:
                                    emailTapped ? "" : "Enter Email Or Mob No",
                                border: InputBorder
                                    .none, // Remove the default border
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                              ),
                              onTap: () {
                                setState(() {
                                  emailTapped = true;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * .6, 0, 0, 2),
                          child:
                              const TextUnderTextBox(text: "Sign In WIth OTP"),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 8, 8, 2),
                          child: TextAboveTextBox(text: "Password"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                errorText: passwordTapped &&
                                        passwordController.text.isEmpty
                                    ? 'Please enter a password'
                                    : null,
                                labelText:
                                    passwordTapped ? "" : "Enter Password",
                                border: InputBorder
                                    .none, // Remove the default border
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                              ),
                              onTap: () {
                                setState(() {
                                  passwordTapped = true;
                                });
                              },
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (bool? value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                            ),
                            const Text(
                              'Remember Me',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width * .25,
                                0,
                                8,
                                2,
                              ),
                              child: const TextUnderTextBox(
                                  text: "Forget Password"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              return ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: isLoginButtonEnabled
                                        ? MaterialStatePropertyAll(
                                            Colors.blue[900])
                                        : MaterialStatePropertyAll(
                                            Colors.blue[100])),
                                onPressed: () {
                                  isLoginButtonEnabled
                                      ? loginCheck(state, context)
                                      : null;
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(color: Colors.white),
                                ),
                              );
                            },
                          ),
                        ),
                        sizedBoxHeight(10),
                        const Center(
                          child: Text("Or"),
                        ),
                        sizedBoxHeight(10),
                        const SocialMediaIcons(),
                        sizedBoxHeight(30),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextsBelowSocialMediaIcons(text: "Business User?"),
                            TextsBelowSocialMediaIcons(
                                text: "Dont Have An Account")
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 23, right: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlueTextBelowSocialMedia(text: "Login Here"),
                              BlueTextBelowSocialMedia(text: "SignUp"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  sizedBoxHeight(30),
                  Text(
                    "By continueing you agree to ",
                    style: TextStyle(
                        fontSize: 20, color: Colors.grey.withOpacity(.8)),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          style: TextStyle(
                              color: Colors.grey.withOpacity(.8), fontSize: 20),
                          text: "Pomilo's",
                        ),
                        const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 20),
                          text: "Terms Of Use & Privacy Policy",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }

  _isEmailValid() {
    String email = emailController.text;
    String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(emailPattern);
    return regex.hasMatch(email);
  }

  loginCheck(LoginState state, BuildContext context) async {
    context.read<LoginBloc>().add(
          LoginCheckEvent(
              email: emailController.text,
              password: passwordController.text,
              ctx: context),
        );
  }
}
