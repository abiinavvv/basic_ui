import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    final wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order#1688068"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text("May 31,05:42 PM"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Card(
                        color: Colors.blue,
                        shape: CircleBorder(),
                      ),
                    ),
                    Text(
                      "Delivered",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade600),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Text(
                  "1 ITEM",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 19),
                ),
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.request_page_rounded,
                      color: Colors.cyan,
                    ),
                    Text(
                      " RECEIPT",
                      style: TextStyle(color: Colors.cyan, fontSize: 18),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: wi / 6,
                    height: hi / 11,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border:
                            Border.all(width: 0.7, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("lib/assets/ss1.png"))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Explore | Men | Navy Blue",
                          style: TextStyle(fontSize: 18)),
                      Text(
                        "1 piece",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Text("Size: XL",
                          style: TextStyle(color: Colors.grey.shade600)),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Card(
                              color: Colors.blue.shade50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  side: const BorderSide(color: Colors.blue)),
                              child: const Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          const Text(" x \u{20B9} 799 ")
                        ],
                      )
                    ],
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(""),
                      Text(""),
                      Text(""),
                      Text("   \u{20B9} 799"),
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              const ListTile(
                title: Text("item Total"),
                subtitle: Text("Delivery"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Text("\u{20B9} 799"),
                    Text(
                      "FREE",
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    )
                  ],
                ),
              ),
              const ListTile(
                  minTileHeight: 20,
                  title: Text(
                    "Grand Total",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("\u{20B9} 799",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              const Divider(
                thickness: 2,
              ),
              const ListTile(
                title: Text("CUSTOMER DETAILS"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "SHARE",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  "Deepa",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("+19-7829000484",
                    style: TextStyle(fontSize: 15)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const IconButton(
                        onPressed: (null),
                        icon: Icon(
                          Icons.phone_rounded,
                          color: Colors.blue,
                          size: 40,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "lib/assets/whatsapp.png",
                      color: Colors.green,
                      height: 35,
                    ),
                  ],
                ),
              ),
              const ListTile(
                title: Text(
                  "Address",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle:
                    Text("D 1101 Chartered Beverly\nHills,Subramanyapura P.O"),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text("Bangalore"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Payment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("Online"),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pincode",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text("560061"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text(""),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text(""),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        MaterialButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(6)),
                          color: Colors.green.shade50,
                          onPressed: () {},
                          child: const Text(
                            "PAID",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "ADDITIONAL INFORMATION",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "State",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text("Karnadaka"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text("greeniceaqua@gmail.com"),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: MaterialButton(
                  elevation: 0,
                  minWidth: double.infinity,
                  height: hi / 21,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: const Text(
                    "Share receipt",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
