import 'package:expensetracketr/PAge/Database/expense_model.dart';
import 'package:expensetracketr/PAge/Database/repository.dart';

class ExpenseService{
  late ExpenseRepository expenserepository;
  ExpenseService(){
    expenserepository = ExpenseRepository();
  }
  insertService(Expense expense)async{
    return await expenserepository.insertData("EXPENSE", expense.ExpenseMap());
  }

  //Read ALL SERVICE
  readAll()async{
    return await expenserepository.readAllData("EXPENSE");

  }
  //read single data
  readSingleData(Expense expense)async{
    return await expenserepository.readSingledata("EXPENSE", expense.id);

  }
  //update data
  updateData(Expense expense)async{
    return await expenserepository.updateData("EXPENSE", expense, expense.id);
  }
  //Delete Data
  deleteData(Expense expense)async{
    return await expenserepository.deleteData("EXPENSE", expense.id);
  }

}