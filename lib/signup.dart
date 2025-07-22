import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const SignUpPage());
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPageBuilding(),
    );
  }
}

class SignUpPageBuilding extends StatefulWidget {
  const SignUpPageBuilding({super.key});

  @override
  State<SignUpPageBuilding> createState() => _SignUpPageBuilding();
}

class _SignUpPageBuilding extends State<SignUpPageBuilding> {
  final controller1 = TextEditingController();
  bool isObscure1 = true;
  bool isObscure2 = true;
  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  final focusNode3 = FocusNode();
  final focusNode4 = FocusNode();


  @override
  void dispose() {
    controller1.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F1F),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Welcome to ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'NowTV',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 22
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                'Create an account to explore amazing feature',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                focusNode: focusNode1,
                onSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusNode2);
                },
                onTapOutside:(event){
                  focusNode1.unfocus();
                },
                decoration: InputDecoration(
                  hintText: "Username or Email",
                  hintStyle: TextStyle(
                    color: Color(0xFF666666).withOpacity(0.9),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_4_rounded,
                    color: Color(0xFF8D8D8D),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                focusNode: focusNode2,
                onTapOutside:(event){
                  focusNode2.unfocus();
                },
                onSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusNode3);
                },
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Color(0xFF666666).withOpacity(0.9),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xFF8D8D8D),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                focusNode:focusNode3,
                onTapOutside:(event){
                  focusNode3.unfocus();
                },
                onSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusNode4);
                },
                obscureText: isObscure1,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color(0xFF666666).withOpacity(0.9),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.key, color: Color(0xFF8D8D8D)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscure1 ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xFF8D8D8D),
                    ),
                    onPressed: () {
                      setState(() {
                        isObscure1 = !isObscure1;
                      });
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                focusNode: focusNode4,
                onTapOutside:(event){
                  focusNode4.unfocus();
                },
                onSubmitted: (value) {
                  focusNode4.unfocus();
                },
                onEditingComplete: (){
                  focusNode4.unfocus();
                },
                obscureText: isObscure2,
                decoration: InputDecoration(
                  hintText: "Confirm password",
                  hintStyle: TextStyle(
                    color: Color(0xFF666666).withOpacity(0.9),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF3F3F3F),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.key, color: Color(0xFF8D8D8D)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscure2 ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xFF8D8D8D),
                    ),
                    onPressed: () {
                      setState(() {
                        isObscure2 = !isObscure2;
                      });
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Regiter',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Or login with',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF353535),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF353535),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/facebook.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(
                      color: Color(0xFF666666).withOpacity(0.9),
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
