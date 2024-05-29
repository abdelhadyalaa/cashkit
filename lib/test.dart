
/*Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: togglePaymentStatus,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    width: 24,
                    height: 24,
                    child: Center(
                      child: hasPaid
                          ? Icon(
                              Icons.check,
                              size: 20,
                              color: hasPaid
                                  ? Theme.of(context).primaryColor
                                  : Colors.white,
                            )
                          : null,
                    ),
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  hasPaid ? 'pay' : 'Didn’t  Pay',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),*/
// class MsScreen extends StatelessWidget {
//   const MsScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     bool isPay =false;
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 24.w,
//                   height: 24.h,
//                   margin: EdgeInsets.symmetric(horizontal: 8),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(42)),
//                       border: Border.all(color: Theme.of(context).primaryColor),
//                       color: Colors.white),
//                   child: Center(
//                       child: Icon(
//                     Icons.check,
//                     color: isPay?Theme.of(context).primaryColor:Colors.white,
//                   )),
//                 ),
//                 Text(
//                   "Didn’t pay",
//                   style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

/*import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class TextFieldColorChangePage extends StatefulWidget {
  @override
  _TextFieldColorChangePageState createState() =>
      _TextFieldColorChangePageState();
}

class _TextFieldColorChangePageState extends State<TextFieldColorChangePage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEFEFEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Questions ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          Text(
            "Which of these do you spend money on ?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: const Row(
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              buttonStyleData: ButtonStyleData(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.white,
                ),
                elevation: 2,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 30,
                ),
                iconEnabledColor: Colors.black,
                iconDisabledColor: Colors.grey,
                openMenuIcon: Icon(
                  Icons.arrow_drop_up,
                  size: 30,
                ),
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: double.infinity,
                scrollPadding: EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                // offset: const Offset(, 0),

                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: MaterialStateProperty.all(6),
                  thumbVisibility: MaterialStateProperty.all(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.only(left: 14, right: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
