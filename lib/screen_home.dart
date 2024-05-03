import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<String> list1 = ['item1', 'item2', 'item3', 'item4', 'item5'];
  List<String> list2 = ['School', 'Library', 'Admin', 'Sec1', 'Sec2'];
  List<String> list3 = ['English', 'Hindi', 'Math', 'Arabic', 'MSCS'];

  String? dropdownvalue1;
  String? dropdownvalue2;
  String? dropdownvalue3;

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
            DropdownButton(
                value: dropdownvalue1,
                hint: Text('Select Category'),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: list1.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue1 = newValue!;
                  });

                  // print(dropdownvalue);
                }),
            const SizedBox(
              height: 20,
            ),
            DropdownButton(
                value: dropdownvalue2,
                hint: const Text('Select Category'),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: list2.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue2 = newValue!;
                  });

                  // print(dropdownvalue);
                }),
            SizedBox(
              height: 20,
            ),
            DropdownButton(
                value: dropdownvalue3,
                hint: const Text('Select Category'),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: list3.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue3 = newValue!;
                  });

                  // print(dropdownvalue);
                }),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                if (dropdownvalue1 != null) {}
              },
              child: Text(dropdownvalue1 ?? " "),
            ),
            GestureDetector(
              onTap: () {
                if (dropdownvalue2 != null) {}
              },
              child: Text(dropdownvalue2 ?? " "),
            ),
            GestureDetector(
              onTap: () {
                if (dropdownvalue3 != null) {}
              },
              child: Text(dropdownvalue3 ?? " "),
            ),
          ],
        ),
      )),
    );
  }
}
