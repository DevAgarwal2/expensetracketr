import 'package:expensetracketr/Component/button_comp.dart';
import 'package:expensetracketr/Component/text_field_comp.dart';
import 'package:expensetracketr/PAge/dashboard_screen.dart';
import 'package:flutter/material.dart';

class SavingPage extends StatefulWidget {
  const SavingPage({super.key});

  @override
  State<SavingPage> createState() => _SavingPageState();
}

class _SavingPageState extends State<SavingPage> {
  TextEditingController title = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController amount = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          
          children: [
            SizedBox(height: 60,),
            Icon(Icons.wallet_rounded,size: 90,),
            SizedBox(height: 20,),
            TextFieldComp(text: "TITLE", controller: title, icon: Icon(Icons.title_outlined)),
            TextFieldComp(text: "Year", controller: year, icon: Icon(Icons.date_range)),
            TextFieldComp(text: "Month", controller: month, icon:Icon(Icons.dataset_rounded)),
            TextFieldComp(text: "Saving Amount", controller: amount, icon: Icon(Icons.monetization_on_outlined))
            ,SizedBox(height: 40,),
            ButtonComp(text: "Submit",onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
            },)
          ],
        )),
      )
    );
  }
}