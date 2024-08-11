import 'package:flutter/material.dart';

import 'transaction_history_card.dart';

List transactionHistoryList=[
  TransactionHistoryCard(title: 'Cash Withdrawal', date: '13 April 2022, 10:30 AM', amount: '20,129', isWithdrawal: true),
  SizedBox(height: 10,),
  TransactionHistoryCard(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', amount: '2,000', isWithdrawal: false),
  SizedBox(height: 10,),
  TransactionHistoryCard(title: 'Juni Mobile App project', date: '13 Apr, 2022 at 3:30 PM', amount: '20,129', isWithdrawal: false),

];