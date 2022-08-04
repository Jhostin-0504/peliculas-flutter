import 'dart:ui';

import 'package:flutter/material.dart';



class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      
final String movie = ModalRoute.of(context)?.settings.arguments.toString()?? "no movie";
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(delegate:SliverChildListDelegate([

          _PosterAndTitle(),  

          ]) )
        ],
      )
    );
  }
}
class _CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding:const EdgeInsets.all(0),
        title:Container(
          width: double.infinity,
          color: Colors.black12,
          alignment: Alignment.bottomCenter,
        
          child: const Text("movie.title",style: TextStyle(fontSize: 17),),
       ),

        background:const FadeInImage(
          placeholder: AssetImage("assets/loading.gif"), 
          image: NetworkImage("https://via.placeholder.com/500x300"),
          fit: BoxFit.cover,),
      ),
    );
    
  }
}

class _PosterAndTitle extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme =  Theme.of(context).textTheme;
    return Container(margin: const EdgeInsets.only(top: 20),
    padding:const EdgeInsets.symmetric(horizontal: 20),
    child: Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child:const FadeInImage(
          placeholder: AssetImage("assets/no-image.jpg"), 
          image: NetworkImage("https://via.placeholder.com/200x400"),
          height: 150,),
      ),
    const  SizedBox(width: 20),
    
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Movie.title", style: textTheme.headline5,overflow: TextOverflow.ellipsis,maxLines: 2, ),
        Text("Movie original title", style: Theme.of(context).textTheme.subtitle1,overflow: TextOverflow.ellipsis,maxLines: 1,),
        Row(children: [
          const Icon(Icons.star_rate_outlined, size: 15, color:Colors.grey,),
         const SizedBox(width: 5,),
          Text("Movie VoteAverge",style: textTheme.caption,)
        ],)
      ],)
    ],),

    );
  }
}