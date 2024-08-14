import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/body/body.dart';
import '../../widget/my_card_section/income/income.dart';
import '../../widget/my_card_section/my_card_container/my_card_container.dart';
import '../../widget/my_card_section/transaction_history/transaction_history.dart';
import '../../widget/shared_widget/custom_drawer.dart';


class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFF7F9FA),

      appBar: AppBar(
        title: Text(
          "Dashboard",
          maxLines: 1,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        elevation: 0,
        backgroundColor: Color(0xFFF7F9FA),
      ),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    BodyScreen(),
                    SizedBox(height: 10,),
                    MyCardContainer(mainTitle:'My Card' , userName: 'Abdallah Abu Snineh', cardNumber: '0918 8124 0042 8129', expDate: '12/20\-124',),
                    SizedBox(height: 10,),
                    TransactionHistory(),
                    SizedBox(height: 10,),
                    Income()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }
}
