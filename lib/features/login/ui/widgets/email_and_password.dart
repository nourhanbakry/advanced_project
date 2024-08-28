import 'package:advanced_project/core/helper/app_regx.dart';
import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/widgets/app_text_form_field.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool obScureText = true;
  late TextEditingController passwordController;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  
    setupPassWordControllerListener();
    
  }

  void setupPassWordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegx.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegx.hasUpperCase(passwordController.text);
        hasNumber = AppRegx.hasNumber(passwordController.text); 
        hasSpecialChar =AppRegx.hasSpecialChar(passwordController.text) ;
        hasMinLength = AppRegx.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().globalKey,
      child: Column(children: [
        AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: "Email",
            validator: (email) {
              if (email == null || email.isEmpty || !AppRegx.isValidEmail(email))  {
                return "Please enter a valid email";
              }
            }),
        verticalSpacing(18),
        AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            validator: (password) {
              if (password == null || password.isEmpty || !AppRegx.isValidPassword(password)) {
                return "Please enter your password";
              }
            },
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obScureText = !obScureText;
                  });
                },
                child: Icon(
                    obScureText ? Icons.visibility_off : Icons.visibility)),
            hintText: "Password",
            isObscureText: obScureText),
        verticalSpacing(24),
        PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
            hasMinLength: hasMinLength)
      ]),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
