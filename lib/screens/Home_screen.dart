import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgwts.dart';



class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Peliculas en cine'),
      elevation: 0, 
      actions: [
        IconButton(
          onPressed: (){}, 
          icon:const Icon(Icons.search_outlined))
      ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children:const [
          CardSwiper(),
          MovieSlider(),
          
        ],
      ),)
    );
  }
}