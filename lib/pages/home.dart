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
    double enteredAmount =0;
 List <Account> accounts = [] ;
 final List <Category> categoryList = [];
final _controller = TextEditingController();
  Account start =  Account("bank", 60 );
  Account startTwo =  Account("cash", 600 );
  Category categoryOne = Category("Home", 0);
  Category categoryTwo = Category("Two", 0);
  String? valueCategory;
  String? valueAccount;
@override
  void initState() {
    accounts.add(start);
    accounts.add(startTwo);
    categoryList.add(categoryOne);
    categoryList.add(categoryTwo);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Text('Your money'),
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

                            const Text('Your accounts', style: TextStyle (
                                fontSize: 30,
                            fontWeight: FontWeight.bold),),

                            IconButton(onPressed: () {},
                                icon: const Icon(Icons.settings, size: 30,)),


                          ],
                        ),

                    SingleChildScrollView(
                      child: Column(

                        children: [
                          SizedBox(
                            height: 100,
                           child: ListView.builder(
                             itemCount: accounts.length,
                               scrollDirection: Axis.horizontal,
                               itemBuilder: (context, index) => Container(
                                 padding: const EdgeInsets.all(10),
                                 height: 90,
                                 width: 180,
                                 margin: const EdgeInsets.all(10),
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(7),
                                   color: Colors.blue

                                 ),

                                 child: Row (
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   crossAxisAlignment: CrossAxisAlignment.end,

                                   children: [
                                     Row(

                                       mainAxisAlignment: MainAxisAlignment.end,
                                       crossAxisAlignment: CrossAxisAlignment.end,
                                       children: [
                                          Text(accounts[index].amount.toString(),style: const TextStyle(
                                           fontSize: 20,
                                         ),
                                         ),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,


                                           children: [
                                             Text(accounts[index].name.toUpperCase(),style: const TextStyle(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                              borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: DropdownButton(
                            hint: const Text ("Choose category"),
                            value: valueCategory,
                            items: categoryList.map(buildMenu).toList(),
                            onChanged: (value)=> setState(() =>valueCategory = value),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                            padding: const EdgeInsets.all(10),
                          child: DropdownButton(
                            hint: const Text ("Choose account"),
                            value: valueAccount,
                            items: accounts.map(buildMenuAccount).toList(),
                            onChanged: (value)=> setState(() =>valueAccount = value),
                          ),
                        )

                      ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed:() {profitMoney (enteredAmount);}, icon: Icon(
                          Icons.add_box,size: 40,color: Colors.green)),
                        Container(
                          width: 180,
                          height: 40,

                          child:  TextField(
                            controller: _controller,
                            onChanged:(String value){
                              enteredAmount = double.tryParse(value)!;
                            },
                            keyboardType: TextInputType.number,

                          ),
                        ),

                        IconButton(onPressed:() {expenseMoney (enteredAmount);}, icon: Icon(
                            Icons.indeterminate_check_box,size: 40,color: Colors.red))

                      ],
                    )
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
  style: const TextStyle (fontSize: 15),
  ),
  );
  DropdownMenuItem <String> buildMenuAccount(Account e )=> DropdownMenuItem(
    value: e.name,
    child: Text(
      e.name,
      style: const TextStyle (fontSize: 15),
    ),
  );


  profitMoney(double enteredAmount) {

    for(int i = 0; i<accounts.length;i++){
      if(accounts[i].name==valueAccount){
        setState(() {
          double value = accounts[i].amount;
          accounts[i].amount=value+enteredAmount;

        });

      }
    }
  }

  void expenseMoney(double enteredAmount) {
    for(int i = 0; i<accounts.length;i++){
      if(accounts[i].name==valueAccount){
        setState(() {
          double value = accounts[i].amount;
          accounts[i].amount=value-enteredAmount;
          _controller.text="";

        });

      }
    }


  }
  }
