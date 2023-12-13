import 'package:app/screens/home/details/widgets/description.dart';
import 'package:app/screens/home/details/widgets/gallery.dart';
import 'package:flutter/material.dart';

class SingleScreen extends StatelessWidget {
  const SingleScreen({super.key , this.data});

// ignore: prefer_typing_uninitialized_variables
final data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
      slivers: [
            SliverAppBar(
              expandedHeight: 360.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(data['title'] as String, 
                style:const TextStyle(color: Colors.black)
                ),
                background: Hero(
                  tag: data,
                  child:Image.asset(data['photo'],
                  fit: BoxFit.cover,
                  height: 360,
                )),
              ),
            ),
            SliverPersistentHeader(
              delegate: MySliverPersistentHeaderDelegate(),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 700.0,
                color: const Color.fromARGB(255, 243, 243, 243),
                alignment: Alignment.center,
                child: Column(
                  
                  children: [ 
                    Container(
                     height: 120,
                     color: const Color.fromARGB(255, 243, 243, 243),
                    child:Row(
                      children: [
                         ClipRRect(
                          child: Image.asset(data['photo'],width: 100,height: 100,),
                         ),
                         Column(
                          children:[ 
                           const SizedBox(height: 20,),
                            SizedBox(child:Text(data['title'] as String, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),)),
                            const SizedBox(height: 10,),
                            const SizedBox(
                              child:Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber,),
                                  Text('4.4'),
                                ],
                              ),
                              )
                          ] ,
                         ),
                      ],
                    ),
                    ),
                    const SizedBox(height: 10,),
                    MyGallerys(data:data),
                    const SizedBox(height: 25,),
                    Description(data:data),
                    const SizedBox(height: 20,),
                    const SizedBox(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [ 
                        Text('Ratings and review '),
                        Row(
                          children: [ 
                            Text("4.8", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                            Row(
                              children: [ 
                                Icon(Icons.star , color:Colors.amber),
                                Icon(Icons.star , color:Colors.amber),
                                Icon(Icons.star , color:Colors.amber),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height:20),
                        ElevatedButton(
                          onPressed: null, 
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.purple
                            ),
                          ),
                          child: Text('Installer', style:TextStyle(fontSize: 16, color: Colors.white)))
                      ],
                    ),
                    ),
                  ],
                ),
              ),
            ),
      ],
    ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 40.0;

  @override
  double get maxExtent => 40.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30)
        
      )
      ),
      alignment: Alignment.center,
      
      child: const Icon(Icons.linear_scale, size: 30, color: Colors.purple),
      
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
