import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/budget/budget_class.dart';
import 'package:cashkit/screens/budget/needs_budget/mainCateg_needs/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourBudget_needs extends StatefulWidget {
  final List<Budget> budgetList_needs;
  const YourBudget_needs({Key? key, required this.budgetList_needs}) : super(key: key);

  @override
  State<YourBudget_needs> createState() => _YourBudget_needsState();
}

class _YourBudget_needsState extends State<YourBudget_needs> {
  double totalAmount_needs = 1000;
  double spentAmount_needs = 300;
  List<bool> _isCheckedList_needs = [];
  List<Map<String, dynamic>> selectedSubcategories_needs = [];
  void initState() {
    super.initState();
    // Initialize _isCheckedList with false values for each item in the selectedSubcategories list
    _isCheckedList_needs = List.generate(widget.budgetList_needs.length, (index) => false);

    super.initState();

    // Check if the new choice already exists in selectedSubcategories
    bool mainCategoryExists = selectedSubcategories_needs.any((element) =>
    element['mainCategory'] == widget.budgetList_needs.last.selectedCategory);

    if (mainCategoryExists) {
      // If the main category already exists, find its index in the list
      int index = selectedSubcategories_needs.indexWhere((element) =>
      element['mainCategory'] == widget.budgetList_needs.last.selectedCategory);
      // Add the new subcategory to the existing main category's list of subcategories
      selectedSubcategories_needs[index]['subcategories'].add({
        'name': widget.budgetList_needs.last.selectedSubcategory,
        'image': widget.budgetList_needs.last.subCategoryimg,
        'amount': widget.budgetList_needs.last.subAmount,
      });
    } else {
      // If the main category doesn't exist, add a new entry for it
      selectedSubcategories_needs.add({
        'mainCategory': widget.budgetList_needs.last.selectedCategory,
        'subcategories': [
          {
            'name': widget.budgetList_needs.last.selectedSubcategory,
            'image': widget.budgetList_needs.last.subCategoryimg,
            'amount': widget.budgetList_needs.last.subAmount,
          }
        ],
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.budgetList_needs.map((budget) {
            int index = widget.budgetList_needs.indexOf(budget); // Get the index of the current budget item
            return Padding(
              padding: EdgeInsets.only(
                  top: 15.h, left: 8.w, right: 6.w, bottom: 10.h),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(4)), //border corner radius
                            ),
                            height: 48,
                            width: 35,
                            child: CircleAvatar(
                              child: budget.selectedimgCategory,
                              backgroundColor: Color(0xffEFEFEF),
                              radius: 20,
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 48,
                            width: 279.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                          budget.selectedCategory,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff292929))),
                                    ),
                                    Text(
                                        "EGP ${spentAmount_needs} of EGP ${budget.mainAmount.toStringAsFixed(2)}",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff525252))),
                                  ],
                                ),
                                SizedBox(height: 15),
                                LoadingProg(
                                    totalAmount: budget.mainAmount,
                                    spentAmount: spentAmount_needs),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: selectedSubcategories_needs.map((subcategory) {
                          return Container(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  activeColor: Theme.of(context).primaryColor,
                                  value: _isCheckedList_needs[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isCheckedList_needs[index] = value ?? false;
                                      if (_isCheckedList_needs[index]) {
                                        spentAmount_needs = budget.mainAmount;
                                      } else {
                                        spentAmount_needs = 300; // Reset spentAmount to its original value
                                      }
                                    });
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffEFEFEF),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                  ),
                                  height: 48,
                                  width: 30.w,
                                  child: CircleAvatar(
                                    child: budget.subCategoryimg,
                                    backgroundColor: Color(0xffEFEFEF),
                                    radius: 30,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 48,
                                  width: 210.w,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              budget.selectedSubcategory,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff292929))),
                                          Text(
                                              "EGP ${_isCheckedList_needs[index] ? budget.mainAmount.toString() : spentAmount_needs.toString()} of EGP ${budget.mainAmount}",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff525252))),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      LoadingProg(
                                          totalAmount: budget.mainAmount,
                                          spentAmount: spentAmount_needs),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                width: MediaQuery.of(context).size.width.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(8)), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(
                          0.4), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 10, // blur radius
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left:30.0.w),
        child: SizedBox(
          width: double.infinity.w,
          height: 70.h,
          child: Padding(
            padding:  EdgeInsets.only(bottom:25.h),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainCateg_needs()),
                );
              },
              child: Text(
                "Add new Expenses",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ),
      ),
    );
  }
}