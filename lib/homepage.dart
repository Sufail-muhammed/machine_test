import 'package:flutter/material.dart';
import 'package:machinetest/model.dart';
import 'package:machinetest/register.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_active)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_rounded),
                            hintText: 'Search for treatments',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff006837),
                    ),
                    child: Center(
                        child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Sort by :',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: _selectedItem, // Set the selected item
                        hint: Text('Date'),
                        underline: Container(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedItem =
                                newValue; // Update the selected item when changed
                          });
                        },
                        items: <String>[
                          'Date',
                          'Time',
                          'Name',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 930,
              child: ListView.builder(physics: NeverScrollableScrollPhysics(),
                itemCount: rectangle.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 12.0, right: 12, top: 7),
                    child: Card(
                      child: Container(
                        height: 166,
                        width: 50,
                        child: Column(
                          children: [

                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 250.0, top: 20),
                              child:  Text(
                                '${index + 1}. ${rectangle[index]['title']}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 145.0, top: 12),
                              child: Text(
                                rectangle[index]['subtitle'],
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      rectangle[index]['date'],
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Icon(
                                        Icons.people_alt_rounded,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Text(
                                      rectangle[index]['name'],
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              height: 2,
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: Text(
                                    rectangle[index]['booking'],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
            },
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff006837),),
                child: Center(child: Text('Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),)),
              ),
            ),
            SizedBox(height: 35,),
          ],
        ),
      ),
    );
  }
}
