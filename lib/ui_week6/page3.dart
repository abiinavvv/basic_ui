import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    final wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Payments"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 13),
            child: Icon(Icons.info_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartIntial(
                hi: hi,
              ),
              const Listtile(
                data1: "Default Method",
                data2: "Online Payments",
              ),
              const Listtile(
                data1: "Payment Profile",
                data2: "Bank Account",
              ),
              const Divider(
                thickness: 2,
              ),
              const Listtile(
                data1: "Payment Overview",
                data2: "Life Time",
                icon: Icons.keyboard_arrow_down_outlined,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Cattile(
                    text1: "AMOUNT ON HOLD",
                    text2: "0",
                    width: wi,
                    height: hi,
                    color: Colors.orange,
                  ),
                  Cattile(
                      text1: "AMOUNT RECEIVED",
                      text2: "13,332",
                      width: wi,
                      height: hi,
                      color: Colors.green),
                ],
              ),
              SizedBox(
                height: hi / 100,
              ),
              const Text(
                "Transactions",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                children: List.generate(chipchoicelist.length, (index) {
                  final data = chipchoicelist[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ChoiceChip(
                      selectedColor: const Color.fromARGB(255, 16, 110, 187),
                      label: Text(
                        data.text1.toString(),
                        style: TextStyle(
                            color: data.color ?? Colors.grey.shade600),
                      ),
                      selected: data.selected!,
                      onSelected: data.onSelected,
                    ),
                  );
                }),
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: productlist.length,
                itemBuilder: (BuildContext context, int index) {
                  final data = productlist[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Order${data.productname}"),
                        subtitle: Text(data.productsubtitle.toString()),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(data.productprice.toString()),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                    height: 17,
                                    width: 17,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      color: Colors.green,
                                    )),
                                const Text("Successful")
                              ],
                            )
                          ],
                        ),
                        leading: Card(
                          color: Colors.cyan,
                          child: Image.asset(data.productimage.toString()),
                        ),
                      ),
                      Text(
                        "     ${data.productbootombar.toString()}",
                        style: const TextStyle(
                            fontSize: 10, fontStyle: FontStyle.italic),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Productmodel> productlist = [
  Productmodel(
      productname: "#654654",
      productsubtitle: "jul 12 02:06 pm",
      productbootombar: "\u20B9 799 deposited to 456865486548654658",
      productprice: "\u20B9 397.4",
      productimage: "lib/assets/ss1.png"),
  Productmodel(
      productname: "#785648",
      productsubtitle: "Apr 26 07:47 pm",
      productbootombar: "\u20B9 397.4 deposited to 98763240883174658",
      productprice: "\u20B9 799.4",
      productimage: "lib/assets/ss2.png"),
  Productmodel(
      productname: "#087123",
      productsubtitle: "Aug 10 04:06 pm",
      productbootombar: "\u20B9 799 deposited to 456865486548654658",
      productprice: "\u20B9 397.4",
      productimage: "lib/assets/ss1.png"),
  Productmodel(
      productname: "#654654",
      productsubtitle: "jul 12 02:06 pm",
      productbootombar: "\u20B9 799 deposited to 456865486548654658",
      productprice: "\u20B9 397.4",
      productimage: "lib/assets/ss2.png"),
  Productmodel(
      productname: "#785648",
      productsubtitle: "Apr 26 07:47 pm",
      productbootombar: "\u20B9 397.4 deposited to 98763240883174658",
      productprice: "\u20B9 799.4",
      productimage: "lib/assets/ss1.png"),
  Productmodel(
      productname: "#087123",
      productsubtitle: "Aug 10 04:06 pm",
      productbootombar: "\u20B9 799 deposited to 456865486548654658",
      productprice: "\u20B9 397.4",
      productimage: "lib/assets/ss2.png"),
];

class Productmodel {
  final String? productname;
  final String? productsubtitle;
  final String? productbootombar;
  final String? productprice;
  final String? productimage;

  Productmodel(
      {required this.productname,
      required this.productsubtitle,
      required this.productbootombar,
      required this.productprice,
      required this.productimage});
}

List<Chipchoicee> chipchoicelist = [
  Chipchoicee(
      selected: false, text1: "On Hold", onSelected: (bool selected) {}),
  Chipchoicee(
      selected: true,
      text1: "Payouts (15)",
      onSelected: (bool selected) {},
      color: Colors.white),
  Chipchoicee(
      selected: false, text1: "Refunds", onSelected: (bool selected) {}),
];

class Chipchoicee {
  final Color? color;
  final bool? selected;
  final String? text1;
  final Function(bool)? onSelected;

  Chipchoicee({
    required this.selected,
    required this.text1,
    required this.onSelected,
    this.color,
  });
}

class Cattile extends StatelessWidget {
  final String? text1;
  final String? text2;
  final double? width;
  final double? height;
  final Color? color;

  const Cattile(
      {super.key, this.text1, this.text2, this.width, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width! / 2.1,
      height: height! / 7.5,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text1!,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text("\u20B9 ${text2!}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class Listtile extends StatelessWidget {
  final String? data1;
  final String? data2;
  final IconData? icon;

  const Listtile(
      {super.key, required this.data1, required this.data2, this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data1!),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data2!,
            style: TextStyle(color: Colors.grey.shade700),
          ),
          Icon(icon ?? Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

class CartIntial extends StatelessWidget {
  final double? hi;

  const CartIntial({super.key, required this.hi});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hi! / 4,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Transaction Limit",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                  "A free limit up to which you will recieve\nthe online payments directly in your bank",
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade700)),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearProgressIndicator(
                    value: 0.3,
                    minHeight: 6,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    backgroundColor: const Color.fromARGB(255, 224, 218, 218),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("36,668 left out of 50,000",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700)),
                  ),
                ],
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.blue,
                onPressed: () {},
                child: const Text(
                  "Increase Limit",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
