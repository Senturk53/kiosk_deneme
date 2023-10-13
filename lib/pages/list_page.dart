import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/cities/cities.dart';
import 'package:flutter_application_2/pages/detail_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Cities>? cities;
  @override
  void initState() {
    citiesData().then((value) {
      setState(() {
        cities = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste Sayfası"),
      ),
      body: Center(
        child: cities == null
            ? const Text("Loading...")
            : ListView.builder(
                itemCount: cities?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Card(
                        child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: ListTile(
                                leading: const Icon(Icons.home, size: 48),
                                title: Text("${cities?[index].name}"),
                                subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "Latitude: ${cities?[index].cityLat}"),
                                      Text(
                                          "Longitude: ${cities?[index].cityLong}")
                                    ])))),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(city: cities![index])));
                    },
                  );
                },
              ),
      ),
    );
  }
}

Future<List<Cities>> citiesData() async {
  List<Cities> cityData = [];
  final String response = await rootBundle.loadString('lib/cities/cities.json');
  final data = await json.decode(response);
  for (var element in (data as List)) {
    cityData.add(Cities.fromJson(element));
  }
  return cityData;
}
