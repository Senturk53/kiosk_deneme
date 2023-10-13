import 'package:flutter/material.dart';
import 'package:flutter_application_2/cities/cities.dart';

class DetailPage extends StatefulWidget {
  final Cities city;
  const DetailPage({super.key, required this.city});

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
            Expanded(
              flex: 2,
              child: Card(
                child: ListTile(
                    title: Text("${widget.city.name}"),
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
