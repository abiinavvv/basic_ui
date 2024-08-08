import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text("Products"),
                ),
                Tab(
                  child: Text("Categories"),
                )
              ],
            ),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
            title: const Text("Catalogue"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.separated(
              itemCount: cardlist.length,
              itemBuilder: (BuildContext context, int index) {
                return cardlist[index];
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
          ),
        ));
  }
}

List<Cardtile> cardlist = [
  const Cardtile(
    image: "lib/assets/ss1.png",
    proname: "Couch Potato | Women",
    rate: "799",
  ),
  const Cardtile(
    image: "lib/assets/ss2.png",
    proname: "Couch Potato | Men |",
    rate: "799",
  ),
  const Cardtile(
    image: "lib/assets/ss1.png",
    proname: "Couch Potato | Women",
    rate: "799",
  ),
  const Cardtile(
    image: "lib/assets/ss2.png",
    proname: "Couch Potato | Men |",
    rate: "799",
  ),
  const Cardtile(
    image: "lib/assets/ss2.png",
    proname: "Couch Potato | Women",
    rate: "799",
  ),
  const Cardtile(
    image: "assets/61M5I2buz4L._AC_UF894,1000_QL80_.jpg",
    proname: "Couch Potato | Men |",
    rate: "799",
  ),
  const Cardtile(
    image: "assets/p2567760.jpg",
    proname: "Couch Potato | Women",
    rate: "799",
  ),
  const Cardtile(
    image: "assets/61M5I2buz4L._AC_UF894,1000_QL80_.jpg",
    proname: "Couch Potato | Men |",
    rate: "799",
  )
];

class Cardtile extends StatelessWidget {
  final String? proname;
  final String? image;
  final String? rate;
  const Cardtile({super.key, this.proname, this.image, this.rate});

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    final wi = MediaQuery.of(context).size.height;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          // fit: BoxFit.cover,
                          fit: BoxFit.fitHeight,
                          image: AssetImage(image!))),
                ),
                SizedBox(
                  height: hi / 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: wi / 5.6,
                          child: Text(proname!,
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis)),
                      const Text("1 peice"),
                      Text(
                        "\u20B9$rate",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "in Stock",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_outlined)),
                    Switch(value: true, onChanged: (value) {})
                  ],
                )
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.share),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Share Product",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
