import 'package:all4home/component/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  TextEditingController dateInput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  TextEditingController textarea = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    timeinput.text = ""; //set the initial value of text field
    super.initState();
  }

  void dialogPopUp() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          "Booking Confirmed",
          style: GoogleFonts.outfit(
            fontSize: 15,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.done),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking Details",
          style: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF1A7450), //background color of app bar
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  //Input name
                  SizedBox(
                    child: TextField(
                      style: GoogleFonts.outfit(fontSize: 15),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your name',
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //Input phone number
                  TextField(
                    style: GoogleFonts.outfit(fontSize: 15),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Eg. +601X-XXXXXXX",
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //input address
                  TextField(
                    style: GoogleFonts.outfit(fontSize: 15),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Eg. 1-2-03, Lebuh Kundasang ...",
                      labelText: "Address",
                      prefixIcon: Icon(Icons.location_city),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.width / 3,
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.outfit(fontSize: 15),
                        controller: dateInput,
                        //editing controller of this TextField
                        decoration: InputDecoration(
                            icon:
                                Icon(Icons.calendar_today), //icon of text field
                            labelText: "Booking Date" //label text of field
                            ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(
                              () {
                                dateInput.text =
                                    formattedDate; //set output date to TextField value.
                              },
                            );
                          } else {}
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 100,
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.outfit(fontSize: 15),
                        controller:
                            timeinput, //editing controller of this TextField
                        decoration: InputDecoration(
                            icon: Icon(Icons.watch), //icon of text field
                            labelText: "Booking Time" //label text of field
                            ),
                        readOnly:
                            true, //set it true, so that user will not able to edit text
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );

                          if (pickedTime != null) {
                            print(pickedTime.format(context)); //output 10:51 PM
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());
                            //converting to DateTime so that we can further format on different pattern.
                            print(parsedTime); //output 1970-01-01 22:53:00.000
                            String formattedTime =
                                DateFormat('HH:mm:ss').format(parsedTime);
                            print(formattedTime); //output 14:59:00
                            //DateFormat() is from intl package, you can format the time on any pattern you need.

                            setState(
                              () {
                                timeinput.text =
                                    formattedTime; //set the value of text field.
                              },
                            );
                          } else {
                            print("Time is not selected");
                          }
                        },
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 200,
                    child: TextField(
                      style: GoogleFonts.outfit(fontSize: 15),
                      controller: textarea,
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: InputDecoration(
                        labelText: "Remarks",
                        hintText:
                            "Please provide in details the service you need",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: const Color.fromARGB(255, 67, 63, 63))),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //add to wishlist button
                            Row(
                              children: [
                                MyButton(
                                  text: "Confirm booking",
                                  onTap: dialogPopUp,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
