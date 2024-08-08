import 'package:flutter/material.dart';

ValueNotifier<bool> _switch = ValueNotifier(true);

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Additional Information"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.share,
                  ),
                  title: Text("Share Dukaan App"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.comment_bank_outlined),
                  title: Text("Change Language"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Image.asset(
                    "lib/assets/whatsapp.png",
                    height: 25,
                    width: 25,
                    color: Colors.grey.shade600,
                  ),
                  title: const Text("WhatsApp Chat Support"),
                  trailing: ValueListenableBuilder(
                    valueListenable: _switch,
                    builder: (BuildContext context, value, Widget? child) {
                      return Switch(
                        value: value,
                        onChanged: (value) {
                          _switch.value = value;
                        },
                      );
                    },
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("Privacy Policy"),
                ),
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Rate Us"),
                ),
                const ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Sign Out"),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Version 1.0.0",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  "© 2024 ",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
