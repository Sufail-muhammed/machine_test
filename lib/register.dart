import 'package:flutter/material.dart';
import 'package:machinetest/widget/dropdown.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? selectedItem;

  List<String> item = ["one", "two", "three"];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      // Check for null before assignment
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  DateTime _selectedDate = DateTime.now();
  var payment;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0, top: 8),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_active)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290.0),
              child: Text(
                'Register',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 348.0),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your full name',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290.0),
              child: Text(
                'Whatsapp Number',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your Whatsapp Number',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 340.0),
              child: Text(
                'Address',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your Address',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 340.0),
              child: Text(
                'Location',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            CustomDropdown(
              items: ['Kerala', 'Tamil Nadu', 'Uthar Pradesh', 'Andra Pradesh'],
              hintText: '  Choose your location',
              onChanged: (value) {
                print('Selected: $value');
              },
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 340.0),
              child: Text(
                'Branch',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            CustomDropdown(
              items: ['Perinthalmanna', 'Palazhi', 'Tirur', 'Malappuram'],
              hintText: '  Select the branch',
              onChanged: (value) {
                print('Selected: $value');
              },
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 315.0),
              child: Text(
                'Total Amount',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Text(
                'Discount Amount',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Text(
                'Payment Option',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text(
                      'Cash',
                      style: TextStyle(fontSize: 14),
                    ),
                    value: "Cash",
                    groupValue: payment,
                    onChanged: (value) {
                      setState(() {
                        payment = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text(
                      'Card',
                      style: TextStyle(fontSize: 14),
                    ),
                    value: "Card",
                    groupValue: payment,
                    onChanged: (value) {
                      setState(() {
                        payment = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text(
                      'UPI',
                      style: TextStyle(fontSize: 14),
                    ),
                    value: "UPI",
                    groupValue: payment,
                    onChanged: (value) {
                      setState(() {
                        payment = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Text(
                'Advance Amount',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Text(
                'Balance Amount',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Text(
                'Treatment Date',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15, top: 7),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => _selectDate(context),
                        icon: Icon(Icons.calendar_month_outlined)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Text(
                'Treatment Time',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7, top: 7),
                  child: SizedBox(
                      width: 190,
                      child: CustomDropdown(
                        items: ['01', '02', '03', '04'],
                        hintText: '  Hour',
                        onChanged: (value) {
                          print('Selected: $value');
                        },
                      ),),
                ),
                SizedBox(width: 25,),
                Padding(
                  padding: const EdgeInsets.only( right: 10,top: 7),
                  child: SizedBox(
                      width: 190,
                      child: CustomDropdown(
                        items: ['01', '02', '03', '04'],
                        hintText: '  Minutes',
                        onChanged: (value) {
                          print('Selected: $value');
                        },
                      ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff006837),
              ),
              child: Center(
                  child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
