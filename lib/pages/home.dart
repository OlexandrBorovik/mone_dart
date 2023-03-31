import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

List accounts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text('Your money'),
          centerTitle: true,
          backgroundColor: Colors.lime,
        ),
        body: SafeArea(

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {},
                            icon: const Icon(Icons.arrow_back_outlined, size: 30,)),

                            Text('Your accounts', style: TextStyle (
                                fontSize: 30,
                            fontWeight: FontWeight.bold),),

                            IconButton(onPressed: () {},
                                icon: const Icon(Icons.settings, size: 30,)),


                          ],
                        ),

                    Container(

                      child: SingleChildScrollView(
                        child: Column(

                          children: [
                            SizedBox(
                              height: 100,
                             child: ListView.builder(
                               itemCount: 10,
                                 scrollDirection: Axis.horizontal,
                                 itemBuilder: (context, index) => Container(
                                   padding: EdgeInsets.all(10),
                                   height: 90,
                                   width: 170,
                                   margin: EdgeInsets.all(10),
                                   color: Colors.blue[400],
                                   child: Row (
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     crossAxisAlignment: CrossAxisAlignment.end,

                                     children: [
                                       Row(

                                         mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children: [
                                           const Text("Balance",style: TextStyle(
                                             fontSize: 20,
                                           ),
                                           ),
                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,

                                             children: [
                                               Text("Name",style: TextStyle(
                                                 fontSize: 25
                                               ),
                                               )
                                             ],
                                           )
                                         ],
                                       )
                                     ],
                                     
                                   ),


                                 ),
                            )
                            )
                          ],
                        ),
                      ),
                    ),

                      ]
                    ),
            ),

            )

        );

  }
}