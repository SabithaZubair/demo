import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List<String> list1 = ['item1', 'item2', 'item3', 'item4', 'item5'];
  List<String> list2 = ['School', 'Library', 'Admin', 'Sec1', 'Sec2'];
  List<String> list3 = ['English', 'Hindi', 'Math', 'Arabic', 'MSCS'];

  String? dropdownvalue1;
  String? dropdownvalue2;
  String? dropdownvalue3;
  String? displayedValue;

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
              customDropDown(
                  dropvalue: dropdownvalue1,
                  itemlist: list1,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue1 = newValue;
                      displayedValue = dropdownvalue1;
                    });

                    // print(dropdownvalue);
                  }),
              const SizedBox(
                height: 20,
              ),
              customDropDown(
                  dropvalue: dropdownvalue2,
                  itemlist: list2,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue;
                      displayedValue = dropdownvalue2;
                    });

                    // print(dropdownvalue);
                  }),
              SizedBox(
                height: 20,
              ),
              customDropDown(
                  dropvalue: dropdownvalue3,
                  itemlist: list3,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue3 = newValue;
                      displayedValue = dropdownvalue3;
                    });

                    // print(dropdownvalue);
                  }),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    print(dropdownvalue1);
                    print(dropdownvalue2);
                    print(dropdownvalue3);
                  },
                  child: Text('Click')),
            ],
          ),
        ),
      ),
    );
  }

  Widget customDropDown(
      {required String? dropvalue,
      required List<String> itemlist,
      required ValueChanged<String?> onChanged}) {
    return DropdownButton(
      value: dropvalue,
      hint: Text('Select Category '),
      icon: const Icon(Icons.keyboard_arrow_down),
      items: itemlist.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
