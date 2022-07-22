import 'package:flutter/material.dart';

import '../models/heroes.dart';
import 'services/dota_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Heroes>? heroes;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    //pegando dados da API
    getData();
  }

  void getData() async {
    heroes = await DotaServices().getHeroes();
    if (heroes != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: heroes?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  InkWell(
                    onTap: (() => print('clicado')),
                    child: Text(heroes![index].localizedName),
                  ),
                ],
              ),
            );
          },
        ),
        // replacement: const Center(
        //   child: CircularProgressIndicator(),
        // ),
      ),
    );
  }
}
