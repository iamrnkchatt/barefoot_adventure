import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key? key,
    required this.width,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.badge,
  }) : super(key: key);

  final double width;
  final Icon icon;
  final String text1;
  final String text2;
  final bool badge;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: width * 0.1,
        width: width * 0.1,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.teal,
        ),
        child: icon,
      ),
      title: Text(
        text1,
        style: TextStyle(color: Colors.black, fontSize: width * 0.045),
        textAlign: TextAlign.start,
      ),
      subtitle: Text(
        text2,
        style: TextStyle(color: Colors.grey.shade400, fontSize: width * 0.035),
      ),
      trailing: badge == true
          ? Container(
              height: width * 0.02,
              width: width * 0.02,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
              ),
            )
          : SizedBox(
              height: width * 0.0001,
            ),
    );
  }
}
