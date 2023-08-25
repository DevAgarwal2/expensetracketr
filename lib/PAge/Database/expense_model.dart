class Expense{
  int? id;
  String? title;
  String? year;
  String? month;
  String? amount;
  ExpenseMap(){
    var mapping = Map<String,dynamic>();
    mapping["id"] = id?? null;
    mapping["title"] = title;
    mapping["year"] = year;
    mapping["month"] = month;
    mapping["amount"] = amount;
    return mapping;
  }
}