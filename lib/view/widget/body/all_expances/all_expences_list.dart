import 'package:flutter/material.dart';

import '../../../../core/utils/assets_image.dart';
import 'all_expenses_content_body.dart';
import 'all_expenses_content_header.dart';

List<Widget>allExpensesListItem = [
  Container(
    width: 190,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.only(left:  16,top:  20,bottom:  16, right: 20),
    decoration: BoxDecoration(
      color: Color(0xFF4EB7F2),
      border: Border.all(color: Colors.grey.shade200,width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllExpensesContentHeader(image: Assets.imagesBalance, containerColorIsActive: true,),
        SizedBox(height: 15,),
        AllExpensesContentBody(title: 'Balance', date: 'April 2022', amount: '20,129', containerColorIsActive: true,),
      ],
    ),
  ),
  Container(
    width: 190,

    margin: EdgeInsets.all(10),
    padding: EdgeInsets.only(left:  16,top:  20,bottom:  16, right: 20),
    decoration: BoxDecoration(

      border: Border.all(color: Colors.grey.shade200,width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllExpensesContentHeader(image: Assets.imagesExpenses, containerColorIsActive: false,),
        SizedBox(height: 15,),
        AllExpensesContentBody(title: 'Expenses', date: 'April 2022', amount: '20,129', containerColorIsActive: false,),
      ],
    ),
  ),
  Container(
    width: 190,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.only(left:  16,top:  20,bottom:  16, right: 20),
    decoration: BoxDecoration(

      border: Border.all(color: Colors.grey.shade200,width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllExpensesContentHeader(image: Assets.imagesExpenses, containerColorIsActive: false,),
        SizedBox(height: 15,),
        AllExpensesContentBody(title: 'Expenses', date: 'April 2022', amount: '20,129', containerColorIsActive: false,),
      ],
    ),
  ),

];