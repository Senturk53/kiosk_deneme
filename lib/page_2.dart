import 'package:flutter/material.dart';
import 'package:flutter_application_2/page_detail.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste Sayfası"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: [
                        const Image(
                            image: AssetImage('assets/search.png'),
                            fit: BoxFit.cover),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.abc)),
                        const Text("Selamlar"),
                      ]))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailPage()));
              },
            );
          },
        ),
      ),
    );
  }
}
