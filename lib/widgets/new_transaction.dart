import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController() ;
  final Function addNewTransaction;
  NewTransaction(this.addNewTransaction);
  @override
  Widget build(BuildContext context) {
    return Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    TextField(
                      decoration: InputDecoration(label: Text('Title')),
                      controller: titleController,
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Amount')),
                      controller: amountController,
                    ),
                    TextButton(
                      onPressed:( ){
                        addNewTransaction(titleController.text,double.parse(amountController.text));
                      },
                      child: Text('Add Transaction'),
                      style: TextButton.styleFrom(primary: Colors.purple),
                    )
                  ]),
                ),
              );
  }
}