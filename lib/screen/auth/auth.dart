import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/screen/background_painter.dart';
import 'package:provider/provider.dart';

import 'authentication_service.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen ({Key? key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
    builder: (context) => const AuthScreen(),
  );

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(
                animation: _controller.view,
              ),
            ),
          ),
         Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 150),
                Visibility(
                  child: Text(
                   '新海',
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: neutral,
                  ),
                  ),
                  visible: true,
                ),
                SizedBox(height: 150),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        _controller.reverse(from: 0);
                        context.read<AuthenticationService>().signIn(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                      },
                      child: Text("Sign in"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        _controller.forward(from: 0);
                        context.read<AuthenticationService>().signUp(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                      },
                      child: Text("Sign up"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AnimationController>('_controller', _controller));
  }
}