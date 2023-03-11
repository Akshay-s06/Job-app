import 'package:flutter/material.dart';
import 'package:akshay/views/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.black12, Colors.white70]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(
              height: 51,
            ),
            _inputField("UserName", usernameController),
            const SizedBox(
              height: 20,
            ),
            _inputField("password", passwordController, isPassword: true),
            const SizedBox(
              height: 51,
            ),
            _loginBtn(),
            const SizedBox(
              height: 21,
            ),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          shape: BoxShape.circle),
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 120,
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white12));
    return TextField(
      style: const TextStyle(color: Colors.lime),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white12),
          enabledBorder: border,
          focusedBorder: border),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((BuildContextcontext) {
          return Home();
        })));
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Login In",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.blue,
        onPrimary: Colors.pink,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }
}
