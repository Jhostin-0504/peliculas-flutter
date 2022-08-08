import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CastinCards extends StatelessWidget {
  const CastinCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:10 ,
        itemBuilder: (_, index )=> _CastCard()),
    );
    
  }
}
class _CastCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const FadeInImage(
            placeholder:  AssetImage("assets/no-image.jpg"), 
            image:NetworkImage("https://biggsinstitute.org/wp-content/uploads/sites/31/2018/09/200x300.png"),
            height: 140,
            width: 100,
            fit: BoxFit.cover,
            ),
            
        ),
       const SizedBox(height: 5,),
       const  Text("Actor.name",maxLines: 2,overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        ),
      ],),
    );
  }
}