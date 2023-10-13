import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/camera_page.dart';
import 'package:flutter_application_2/pages/input_page.dart';
import 'package:flutter_application_2/pages/list_page.dart';
import 'package:flutter_application_2/widget/card_grid_tile.dart';

class HomePage extends StatefulWidget {
  final CameraDescription cameraDescription;
  const HomePage({super.key, required this.cameraDescription});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
          children: [
            CardGridTile(
              title: "Kamera",
              icon: Icons.camera,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TakePictureScreen(camera: widget.cameraDescription),
                    ));
              },
            ),
            CardGridTile(
              title: "List View",
              icon: Icons.list,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ListPage()));
              },
            ),
            CardGridTile(
              title: "Text Form Field",
              icon: Icons.input,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InputPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
