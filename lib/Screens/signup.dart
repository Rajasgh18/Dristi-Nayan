import 'package:dristi_nayan/Screens/Components/input.dart';
import 'package:dristi_nayan/Screens/home.dart';
import 'package:dristi_nayan/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss_defaults/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Dristi Nayan",
              style: GoogleFonts.viga(
                fontSize: 36,
                color: TailwindColors.blue,
                // fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "An Crime Management Application",
              style: GoogleFonts.firaSans(
                fontSize: 18,
                color: TailwindColors.coolGray.shade600,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  color: TailwindColors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Create Account with Email",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.firaSans(
                          color: TailwindColors.blueGray,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Input(
                        controller: emailController,
                        hintText: "Email",
                        keyboard: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Input(
                          controller: passwordController,
                          hintText: "Password",
                          keyboard: TextInputType.text,
                          isPassword: true),
                      const SizedBox(
                        height: 32,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: Text(
                          "Sign up with Email",
                          style: GoogleFonts.firaSans(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an Account?",
                            style: GoogleFonts.firaSans(
                                fontSize: 18, color: TailwindColors.blueGray),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.firaSans(
                                  fontSize: 18, color: TailwindColors.blue),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
