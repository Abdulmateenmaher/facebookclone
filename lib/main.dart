import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
       children: [
         /// non scrollable top widgets
         Container(
           color: Colors.black54,
           padding: EdgeInsets.only(bottom: 1),
           child: Column(
             children: [
               /// top face book search and messenger
               Container(
                 color: Colors.white,
                 padding: EdgeInsets.only(top: 30, left: 15,right: 15,bottom: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Text('Facebook',style: TextStyle(color: Colors.blue,fontSize: 35,fontWeight: FontWeight.bold),),
                     Row(
                       children: [
                         Container(
                           padding: const EdgeInsets.all(3),
                           decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey.shade200),
                           child: const Icon(Icons.search_outlined,weight: 5,size: 33,),
                         ),
                         Container(
                           margin: const EdgeInsets.only(left: 12),
                           padding: const EdgeInsets.all(7),
                           decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey.shade200),
                           child: const Icon(FontAwesomeIcons.facebookMessenger,weight: 5,size: 25,),
                         ),
                       ],
                     )
                   ],
                 ),
               ),
               /// top bar
               Container(
                 color: Colors.white,
                 padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Icon(FontAwesomeIcons.home,color: Colors.blue,size: 30,),
                     const Icon(FontAwesomeIcons.userFriends,size: 22,),
                     SizedBox(
                         height: 30,width: 40,
                         child: Image.asset('images/watch.jpg',)),
                     const Icon(FontAwesomeIcons.flag,size: 25,),
                     const Icon(FontAwesomeIcons.bell,size: 25,),
                     const Icon(Icons.menu,size: 38,weight: 0.2,color: Colors.black87,),
                   ],),
               ), //end of top bar
             ],
           ),
         ),
         /// Scrollable are is started
         Container(
           alignment: Alignment.topCenter,
           height: MediaQuery.of(context).size.height-149,
           child: ListView(
             scrollDirection: Axis.vertical,
             children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// create post bar
                  Container(
                    padding: const EdgeInsets.all(15),
                    color: Colors.white,
                    child: Row(
                      children: [
                        //profile picture
                        SizedBox(
                          height: 45,width: 45,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset('images/profile1.jpg')),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        //text field
                        Container(
                          padding: EdgeInsets.all(0.5),
                          height: 35,width: 270,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:  Container(
                            height: 30,width: 265,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.only(right: 90),
                            alignment: Alignment.center,
                            child: Text('What`s on your mind?',style: TextStyle(fontSize: 17),),
                          ),
                        ),
                        SizedBox(width: 10,),
                        // Gallery icon
                        Icon(
                          CupertinoIcons.photo_fill_on_rectangle_fill,size: 25,color: CupertinoColors.activeGreen,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  /// Stories
                  Container(height: 226,color: Colors.white,
                    padding: const EdgeInsets.only(top: 12,bottom: 12),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        Container(
                          height: 200,
                          width: 10,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.green, Colors.blue],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15)
                              )
                          ),
                        ),
                        for(int i=0; i<10; i++)
                          Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 110,
                                margin: const EdgeInsets.only(left: 5,right: 5),

                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Image.asset('images/story1.jpg')),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top:7,left: 10 ),
                                height: 30,width: 30,

                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset('images/profile1.jpg'))),
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 10,left: 5),
                                alignment: Alignment.bottomCenter,
                                child: const Text('Nader afriqi',style: TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                            ],
                          )
                      ],
                    ),
                  ),
                  /// posts
                  for(int i=1; i<10; i++)
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    color: Colors.white,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top: 10),

                      child: Column(
                        children: [
                          // top bar of post
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 8,),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: SizedBox(
                                      height: 40,width: 40,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset('images/profile1.jpg'),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  // name and date
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Maher',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                      Row(
                                        children: [
                                          Text('7 hours ago'),
                                          SizedBox(width: 2,),
                                          Icon(Icons.circle,size: 2,),
                                          SizedBox(width: 2,),
                                          Icon(Icons.public,size: 13,),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Row(
                                  children: [
                                    Icon(
                                        Icons.more_horiz_sharp
                                    ),
                                    SizedBox(width: 20,),
                                    Icon(
                                        Icons.close
                                    ),
                                    const                       SizedBox(width: 20,)
                                  ],
                                ),
                              )
                            ],
                          ),
                          // Description part of post
                          Container(
                            padding: const EdgeInsets.only(left: 13,right: 13,top: 15,bottom: 8),
                            child: const Text(
                              'Updated for 2023, get free job description'
                                  ' templates & examples for 1000+ jobs. Responsibilities,'
                                  ' duties and requirements researched and ready to go.',

                            ),
                          ),
                          // picture part of post
                          Image.asset('images/post1.jpg'),
                          // likes and comments amount bar
                          Container(
                            color: Colors.grey,
                            padding: const EdgeInsets.all(0.5),
                            child: Container(
                              padding: const EdgeInsets.all(7),
                              color: Colors.white,
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //likes amount
                                  Row(
                                    children: [
                                      // small blue like
                                      SizedBox(
                                        height: 15,width: 15,
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(100),
                                            child: Container(
                                              padding: EdgeInsets.all(2),
                                              color: Colors.blue,
                                              child: FittedBox(
                                                  fit: BoxFit.fill,
                                                  child: Icon(Icons.thumb_up,color: Colors.white,size: 7,)),
                                            )),
                                      ),
                                      Text('❤️️ 20')
                                    ],
                                  ),
                                  // comments amount
                                  Text('12 Comments       ',style: TextStyle(fontSize: 12,color: Colors.black54),)
                                ],
                              ),
                            ),
                          ),
                          // like comment and share icons
                          Container(
                            padding: EdgeInsets.only(left: 40,right: 40,bottom: 5,top: 5),
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined),
                                    Text(' Like'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.mode_comment_outlined),
                                    Text(' Comment'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.share_outlined),
                                    Text(' Share'),
                                  ],
                                ),

                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  )
                ],
              )
             ],
           ),
         )
       ],)
    );


  }
}
