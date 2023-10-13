import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int index;
  const DetailPage({super.key, required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detay Sayfası"),
        ),
        body: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Card(
                child: ListTile(
                    title: Text("Mağaza 1"),
                    subtitle: Text("İstanbul mağazası"),
                    leading: Image(
                      image: AssetImage("assets/home.png"),
                    )),
              ),
            ),
            Expanded(
                flex: 12,
                child: Container(
                  color: Colors.deepPurple,
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                            color: Colors.grey,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Birinci Yazı"),
                            )),
                        Card(
                            color: Colors.grey,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("İkinci Yazı"),
                            )),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
