import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    final wi = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              // color: Colors.cyanAccent,
              height: hi / 15,
              minWidth: hi / 5,
              onPressed: () {},
              child: const Text("Select Domain",
                  style: TextStyle(color: Colors.blue, fontSize: 20)),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              height: hi / 15,
              minWidth: hi / 5,
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                "Get Premium",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: hi / 2.5,
                child: Stack(
                  children: [
                    SizedBox(
                      height: hi / 4,
                      child: AppBar(
                        // automaticallyImplyLeading: true,
                        elevation: 0,
                        centerTitle: true,
                        title: const Text("Dukaan Premium"),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: SizedBox(
                            height: hi / 3.6,
                            width: double.infinity,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(19),
                                child: Column(
                                  children: [
                                    SizedBox(
                                        width: wi / 2.1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                                "lib/assets/dukaan.png"),
                                            const Text(
                                              "PREMIUM  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue,
                                                  fontSize: 15),
                                            )
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    const Text(
                                      "Get Dukkan Premium for just \n\u20B94,999/year",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        style: TextStyle(
                                            color: Colors.grey.shade600),
                                        textAlign: TextAlign.center,
                                        "All the advanced features for scaling your\nbusiness")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ))
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "    Features",
                    style: TextStyle(fontSize: 17),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: tilelist.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final data = tilelist[index];
                      return ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.cyan),
                              image: DecorationImage(
                                image: NetworkImage(data.image.toString()),
                              )),
                        ),
                        title: Text(data.text1.toString()),
                        subtitle: Text(
                          data.text2.toString(),
                          style: const TextStyle(fontSize: 13),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "    What is Dukaan Premium?",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: hi / 4,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        image: const DecorationImage(
                          image: AssetImage(
                              "assets/page4/Screenshot 2024-07-29 115034.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Frequenlty asked questions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: tileliste.length,
                    itemBuilder: (BuildContext context, int index) {
                      final data = tileliste[index];
                      return ExpansionTile(
                        textColor: Colors.black,
                        trailing: data.icon,
                        title: Text(
                          data.text1.toString(),
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Text(
                            data.text2.toString(),
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Need help? Get in touch",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      2,
                      (index) {
                        double size = hi / 40;
                        final color = Colors.grey.shade800;
                        return Container(
                          height: hi / 7,
                          width: wi / 2.23,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  index.isEven
                                      ? Icons.comment_bank_outlined
                                      : Icons.call,
                                  size: size * 2.5,
                                  color: color,
                                ),
                                Text(
                                  index.isEven ? "Live Chat" : "Phone Call",
                                  style:
                                      TextStyle(fontSize: size, color: color),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Tilelistmodel> tileliste = [
  Tilelistmodel(
      text1: "What types of business can use Dukaan\nPremium?",
      text2:
          "Dukkaan caters to a wide variety of sellers Be it a\nsmall grocery story or a big legacy brand - anynone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you",
      icon: const Icon(Icons.add)),
  Tilelistmodel(
    icon: const Icon(Icons.add),
    text2:
        "Dukkaan caters to a wide variety of sellers Be it a\nsmall grocery story or a big legacy brand - anynone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you",
    text1: "Will there be an automatic charge after the\npaid trial",
  ),
  Tilelistmodel(
    icon: const Icon(Icons.add),
    text1: "What payment methods do you offer?",
    text2:
        "Dukkaan caters to a wide variety of sellers Be it a\nsmall grocery story or a big legacy brand - anynone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you",
  ),
  Tilelistmodel(
      icon: const Icon(Icons.add),
      text1: "what happens when my free trial ends?",
      text2:
          "Dukkaan caters to a wide variety of sellers Be it a\nsmall grocery story or a big legacy brand - anynone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you"),
  Tilelistmodel(
      icon: const Icon(Icons.add),
      text1: "what are the terms for the custom domain",
      text2:
          "Dukkaan caters to a wide variety of sellers Be it a\nsmall grocery story or a big legacy brand - anynone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you")
];

class Tilelistmodel {
  final String? text1;
  final String? text2;
  final Widget? icon;

  Tilelistmodel({this.text1, this.text2, required this.icon});
}

List<Listtile> tilelist = [
  Listtile(
    image: "https://cdn-icons-png.flaticon.com/512/4387/4387430.png",
    text1: "Customer Domain name",
    text2: "Get your own custom domain and build\nyour brand on the internet",
  ),
  Listtile(
    image:
        "https://media.istockphoto.com/id/1202864941/vector/best-seller-sign-icon-vector.jpg?s=612x612&w=0&k=20&c=ybN6V3tnuHYqFgPzS0ntVEhjE7xOD2DC2YxneruSjOE=",
    text1: "Verified seller badge",
    text2: "Get green verified badge under your\nstore name and build trust",
  ),
  Listtile(
    image:
        "https://images.vexels.com/media/users/3/157318/isolated/preview/2782b0b66efa5815b12c9c637322aff3-desktop-computer-icon-computer.png?w=360",
    text1: "Dukaan for Pc",
    text2: "Access all the exclusive premium\nfeatures on Dukaan for Pc",
  ),
  Listtile(
    image:
        "https://icons.iconarchive.com/icons/icons8/windows-8/512/Mobile-Headset-icon.png",
    text1: "Priority support",
    text2: "Get your Questions resolve with our\npriority customer support",
  )
];

class Listtile {
  final String? image;
  final String? text1;
  final String? text2;

  Listtile({required this.image, required this.text1, required this.text2});
}
