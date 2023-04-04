import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mone_dart/models/category.dart';

import '../models/account.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String categoryChoose ;

 List <Account> accounts = [] ;
 final List <Category> categoryList = [];

Account start =  Account("bank", 60 );
Category categoryOne = Category("Home", 0);
  Category categoryTwo = Category("Two", 0);
  String? valueCategory;
  String? valueAccount;
@override
  void initState() {
    accounts.add(start);
    categoryList.add(categoryOne);
    categoryList.add(categoryTwo);
    super.initState();
  }
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
                               itemCount: accounts.length,
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
                                            Text(accounts[index].amount.toString(),style: TextStyle(
                                             fontSize: 20,
                                           ),
                                           ),
                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,


                                             children: [
                                               Text(accounts[index].name.toUpperCase(),style: TextStyle(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: DropdownButton(
                            hint: const Text ("Choose category"),
                            value: valueCategory,
                            items: categoryList.map(buildMenu).toList(),
                            onChanged: (value)=> setState(() =>this.valueCategory = value),
                          ),
                        ),
                        Container(
                          child: DropdownButton(
                            hint: const Text ("Choose account"),
                            value: valueAccount,
                            items: accounts.map(buildMenuAccount).toList(),
                            onChanged: (value)=> setState(() =>this.valueAccount = value),
                          ),
                        )

                      ]
                    ),
              ]
            ),

            )
        )
        );

  }

  DropdownMenuItem <String> buildMenu(Category e )=> DropdownMenuItem(
      value: e.categoryName,
      child: Text(
  e.categoryName,
  style: const TextStyle (fontSize: 20),
  ),
  );
  DropdownMenuItem <String> buildMenuAccount(Account e )=> DropdownMenuItem(
    value: e.name,
    child: Text(
      e.name,
      style: const TextStyle (fontSize: 20),
    ),
  );
  }
