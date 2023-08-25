
import "package:expensetracketr/Component/button_comp.dart";
import "package:expensetracketr/Component/text_field_comp.dart";
import "package:expensetracketr/PAge/Database/expense_model.dart";
import "package:expensetracketr/PAge/Database/service.dart";
import "package:expensetracketr/PAge/dashboard_screen.dart";
import "package:flutter/material.dart";
class ExpensePage extends StatefulWidget {

   ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  TextEditingController title = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController amount = TextEditingController();

  List<Expense> expense = <Expense>[];
  var expenseService = ExpenseService();
  getExpenseList()async{
    var expenseList = expenseService.readAll();
    expenseList.forEach((rawData){
      var expenseModel = Expense();
      expenseModel.id = rawData["id"];
      expenseModel.title = rawData["title"];
      expenseModel.year = rawData["year"];
      expenseModel.month = rawData["month"];
      expenseModel.amount = rawData["amount"];
     expense.add(expenseModel);
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          
          children: [
            SizedBox(height: 60,),
            Icon(Icons.wallet,size: 90,),
            SizedBox(height: 20,),
            TextFieldComp(text: "TITLE", controller: title, icon: Icon(Icons.title_outlined)),
            TextFieldComp(text: "Year", controller: year, icon: Icon(Icons.date_range)),
            TextFieldComp(text: "Month", controller: month, icon:Icon(Icons.dataset_rounded)),
            TextFieldComp(text: "Expense Amount", controller: amount, icon: Icon(Icons.monetization_on_outlined))
            ,SizedBox(height: 40,),
            ButtonComp(text: "Submit",onPressed: () async{
              print(amount.text);
              var expense = Expense();
              expense.title = title.text;
              expense.amount = amount.text;
              var result =await expenseService.readAll();
            print(result);
            
             


              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
            },)
          ],
        )),
      )
    );
  }
}