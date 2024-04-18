import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/commons.dart';
import '../components/list_tile_component.dart';
import 'login_form_screen.dart';

class LoginNeededScreen extends StatelessWidget {
  const LoginNeededScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
        centerTitle: true,
        title: const Text(
          'Login to Continue',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //please login Component
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: const Color(0xffEEF1F1),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.close),
                  SizedBox(height: 8),
                  Text(
                    'Please Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            //already have an account
            const Text(
              'Already have an account?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.mainColor,
              ),
            ),
            //login text button
            TextButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff2E73DC),
                    decoration: TextDecoration.underline),
              ),
            ),
            //continue with email
            ListTileComponet(
              title: 'Continue with Email',
              icon: Icons.mail,
              isContinueWithEmail: true,
              onTab: () {
                navigateTo(context, const LoginFormScreen());
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => const LoginFormScreen()));
              },
            ),
            const Divider(height: 64, color: Colors.grey),
            const Text(
              'You can use your email or continue with one of your social accounts.',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            ),
            const SizedBox(height: 16),
            ListTileComponet(
                title: 'Sign in with Apple', icon: Icons.apple, onTab: () {}),
            // const ListTile(
            //   // tileColor: Colors.black,
            //   shape: RoundedRectangleBorder(
            //       side: BorderSide(width: 1, color: Colors.grey)),
            //   leading: Icon(
            //     Icons.apple,
            //   ),
            //   title: Center(
            //     child: Text(
            //       'Sign in with Apple',
            //       style: TextStyle(
            //         fontWeight: FontWeight.w400,
            //         fontSize: 24,
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 16),
            ListTileComponet(
                title: 'Sign in with Facebook',
                icon: Icons.facebook,
                onTab: () {}),
            const SizedBox(height: 16),
            ListTileComponet(title: 'Sign in with Google', onTab: () {}),
          ]),
        ),
      ),
    );
  }
}
