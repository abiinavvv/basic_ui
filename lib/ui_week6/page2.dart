import 'package:flutter/material.dart';

double iconsize = 40;

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: const Text("Manage Store"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: cardlist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 1.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                final data = cardlist[index];
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: data.color,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: data.icon,
                            )),
                        Text(
                          data.text.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}

List<Cardmodel> cardlist = [
  Cardmodel(
      icon: Icon(
        Icons.volume_up,
        size: iconsize,
        color: Colors.white,
      ),
      text: "Marketing\nDesigns",
      color: Colors.orange),
  Cardmodel(
      icon: Icon(Icons.monetization_on, size: iconsize, color: Colors.white),
      text: "Online\nPayments",
      color: Colors.lightGreenAccent),
  Cardmodel(
      icon: Icon(Icons.percent, size: iconsize, color: Colors.white),
      text: "Discount\nCoupons",
      color: Colors.orange.shade300),
  Cardmodel(
      icon: Icon(Icons.person, size: iconsize, color: Colors.white),
      text: "My\nCustomers",
      color: Colors.cyan.shade100),
  Cardmodel(
      icon: Icon(Icons.qr_code, size: iconsize, color: Colors.white),
      text: "Store QR\nCode",
      color: Colors.grey),
  Cardmodel(
      icon: Icon(Icons.money, size: iconsize, color: Colors.white),
      text: "Extra\nCharges",
      color: Colors.purpleAccent.shade400),
  Cardmodel(
      icon: Icon(Icons.notes, size: iconsize, color: Colors.white),
      text: "Order\nForm",
      color: Colors.deepPurpleAccent),
];

class Cardmodel {
  final Color? color;
  final Widget? icon;
  final String? text;

  Cardmodel({required this.icon, required this.text, required this.color});
}
