import 'package:flutter/material.dart';

class NotificationsDestination extends StatefulWidget {
  const NotificationsDestination({super.key});

  @override
  State<NotificationsDestination> createState() =>
      _NotificationsDestinationState();
}

class _NotificationsDestinationState extends State<NotificationsDestination> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Notifications"),
    );
  }
}
