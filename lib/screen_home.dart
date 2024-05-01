import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<String> list1 = ['item1', 'item2', 'item3', 'item4', 'item5'];
  List<String> list2 = ['School', 'Library', 'Admin', 'Sec1', 'Sec2'];

  String? dropdownvalue;
  String? itemlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade500,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            customDropDown(itemlist: list1),
            SizedBox(
              height: 20,
            ),
            customDropDown(itemlist: list2),
            SizedBox(
              height: 40,
            ),
            GestureDetector(child: Text(dropdownvalue!))
          ],
        ),
      )),
    );
  }

  customDropDown({required List<String> itemlist}) {
    if (itemlist == list1) {
      dropdownvalue = list1.first;
    } else {
      dropdownvalue = list2.first;
    }
    return DropdownButton<String>(
        value: dropdownvalue,
        hint: Text('select category'),
        icon: const Icon(Icons.keyboard_arrow_down),
        borderRadius: BorderRadius.circular(15),
        dropdownColor: Colors.purple.shade300,
        items: itemlist.map((String items) {
          return DropdownMenuItem<String>(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            dropdownvalue = newValue;
            print(dropdownvalue);
          });
        });
  }
}
