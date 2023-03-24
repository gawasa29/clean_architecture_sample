import 'package:clean_architecture_sample/presentation/auth/cubit/auth_cubit.dart';
import 'package:clean_architecture_sample/presentation/auth/view/component/button_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return Text(state.toString());
                },
              ),
              ButtonContainerWidget(
                text: "Sign Up",
                onTapListener: () {
                  BlocProvider.of<AuthCubit>(context).signUpEmail();
                },
              ),
            ],
          ),
        ));
  }
}
