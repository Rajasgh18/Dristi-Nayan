import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss_defaults/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDestination extends StatefulWidget {
  const AccountDestination({super.key});

  @override
  State<AccountDestination> createState() => _AccountDestinationState();
}

class _AccountDestinationState extends State<AccountDestination> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Account",
            textAlign: TextAlign.center,
            style: GoogleFonts.firaSans(
                fontSize: 32, color: TailwindColors.blueGray.shade600),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: const Icon(
              Icons.account_circle,
              color: TailwindColors.blueGray,
              size: 50,
            ),
            title: Text(
              "Vipin Kumar Gautam",
              style: GoogleFonts.firaSans(fontSize: 20),
            ),
            subtitle: Text(
              "Railway Official",
              style: GoogleFonts.firaSans(fontSize: 16),
            ),
          ),
          const Column(
            children: [
              SettingButtons(
                title: "Account",
              ),
              SettingButtons(
                title: "Security",
              ),
              SettingButtons(
                title: "Privacy Policy",
              ),
              SettingButtons(
                title: "Help Centre",
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: TailwindColors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50)),
              child: Text(
                "Sign Out",
                style: GoogleFonts.firaSans(fontSize: 20),
              ))
        ],
      ),
    );
  }
}

class SettingButtons extends StatelessWidget {
  final String title;
  const SettingButtons({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(color: TailwindColors.blueGray.shade400),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: const Icon(
          Icons.notifications,
          size: 30,
          color: TailwindColors.blueGray,
        ),
        title: Text(
          title,
          style: GoogleFonts.firaSans(fontSize: 18),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: TailwindColors.blueGray,
        ),
      ),
    );
  }
}
