import 'package:flutter/material.dart';


class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child:Text("Populares",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)
        ),
        const SizedBox(height: 5,),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder:(_,int index) => _MoviPoster(),
              
          ),
        ), 
             
        ],
      ),
    );
  }
}
class _MoviPoster extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 130,
                height: 190,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [


                  GestureDetector(
                     onTap: () => Navigator.pushNamed(context, 'details',arguments: "movie instance"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child:const FadeInImage(placeholder:AssetImage("assets/no-image.jpg") , 
                      image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/96/17/42/place-of-assembly-for.jpg?w=500&h=400&s=1s"),
                      width: 130,
                      height: 200,
                      fit: BoxFit.cover,
                    
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                 const Text("start wars",
                  maxLines: 2,    //segunda linea de texto
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,)

                ],),
              );
 
    
  }
}