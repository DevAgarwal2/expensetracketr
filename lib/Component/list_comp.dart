import "package:flutter/material.dart";

class ListComp extends StatelessWidget {
  final String title;
  final String amount;
  Function()? onTap;
   ListComp({super.key, required this.title, required this.amount,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.person),
      title: Text(title),
      subtitle: Text(amount),
      trailing: GestureDetector(
        onTap: onTap,
          child: Icon(
        Icons.delete,
        color: Colors.red,
      )),
    ));
  }
}
