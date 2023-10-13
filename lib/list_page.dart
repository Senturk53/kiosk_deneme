import 'package:flutter/material.dart';
import 'package:flutter_application_2/detail_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
                        builder: (context) =>  DetailPage(index: index)));
              },
            );
          },
        ),
      ),
    );
  }
}
