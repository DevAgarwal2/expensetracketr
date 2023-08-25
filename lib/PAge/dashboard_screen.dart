import "package:expensetracketr/Component/list_comp.dart";
import "package:expensetracketr/PAge/Database/expense_model.dart";
import "package:expensetracketr/PAge/Database/service.dart";
import "package:expensetracketr/PAge/Expense.dart";
import "package:expensetracketr/PAge/saving_page.dart";
import "package:flutter/material.dart";

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List details = [
    ["Jan", "2000"],
    ["FEB", '6000'],
    ["MARCH", "8000"],
    ["April", '10000'],
    ["MAY", '20000']
  ];
  void delete_item(int index) {
    setState(() {
      details.removeAt(index);
    });
  }

  void add() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ExpensePage()));
  }
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => add(),
                child: Container(
                  height: 160,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text("Expense Page")),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SavingPage())),
                child: Container(
                  height: 160,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text("Saving Page")),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: details.length,
                  itemBuilder: (context, index) {
                    return ListComp(
                      title: details[index][0],
                      amount: details[index][1],
                      onTap: () => delete_item(index),
                    );
                  }))
        ],
      )),
    );
  }
}
