import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/commons.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../base_screen/view/screens/base_screen.dart';
import '../components/list_tile_component.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(AppStrings.welcomeToMaBook),
        // automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        // actions: const [
        //   Icon(Icons.notifications),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              //Column
              CustomTextFormField(
                controller: emailController,
                hint: 'Enter Your Email',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'email can not be empty';
                  }
                  if (!value.contains('@gmail.com')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
              ),

              // 2.TextFiled => password
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                controller: passwordController,
                isPassword: isPassword,
                suffixIcon: InkWell(
                  onTap: () {
                    // isPassword=isPassword?false:true;
                    isPassword = !isPassword;
                    setState(() {});
                  },
                  child: Icon(
                      isPassword ? Icons.visibility_off : Icons.visibility),
                ),
                hint: 'Enter Your Passord',
              ),
              //!password

              // 3.Spacer
              const Spacer(),
              const SizedBox(
                height: 16,
              ),
              // 4.Button => login
              ListTileComponet(
                title: AppStrings.login,
                isContinueWithEmail: true,
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    if (emailController.text == AppStrings.email &&
                        passwordController.text == AppStrings.password) {
                      navigateTo(
                        context,
                        const BaseScreen(),
                      );
                    }
                    //toast
                  }
                },
              ),
              // 5.TextButton => forget password
              TextButton(
                child: const Text('Forget Passowrd?'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
