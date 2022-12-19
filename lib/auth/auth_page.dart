import 'package:finderhostel/auth/sign_in.dart';
import 'package:finderhostel/auth/sign_up.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? SignInScreen(
          onClickedSignUp: toggle,
        )
      : SignUpScreen(onClickedSignUp: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
