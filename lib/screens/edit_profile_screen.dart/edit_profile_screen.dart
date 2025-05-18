import 'package:flutter/material.dart';
import 'package:gold_reserver/page_not_ready.dart';

class EditProfileScreen extends StatelessWidget {
  static const routeName = '/edit_profile';
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: const MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  // DateTime _selectedDate = DateTime.now();
  bool isDatePicked = false;

  // void _datePicker() {
  //   showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime(2200),
  //   ).then(
  //     (pickedDate) {
  //       if (pickedDate == null) {
  //         isDatePicked = false;
  //         return;
  //       } else {
  //         setState(() {
  //           _selectedDate = pickedDate;
  //           isDatePicked = true;
  //         });
  //       }
  //     },
  //   );
  // }

  // void _submitData() {
  //   if (isDatePicked != false) {
  //     Navigator.of(context).pop();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: IconButton(
                  icon: Image.asset('assets/images/edit_profile_icon.png'),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      PageNotReady.routeName,
                    );
                  },
                ),
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter your full name',
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter your full name',
                  labelText: 'Father\'s Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your father\'s name';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter your full address',
                  labelText: 'Address',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your full address';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Mobile Phone',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid mobile number';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Enter a email',
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid date';
                  }
                  return null;
                },
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Row(
              //     children: [
              //       Flexible(
              //         fit: FlexFit.tight,
              //         child: Text(
              //           isDatePicked == false
              //               ? "No Date Chosen!!!"
              //               : 'Picked Date: ${DateFormat.yMd().format(_selectedDate)}',
              //         ),
              //       ),
              //       // todo date now month and year.
              //       TextButton(
              //         child: const Text(
              //           'Choose Date',
              //           style: TextStyle(
              //             color: Colors.green,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 18,
              //           ),
              //         ),
              //         onPressed: () => _datePicker(),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    // It returns true if the form is valid, otherwise returns false
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Data is in processing.')));
                      // Scaffold.of(context).showSnackBar(const SnackBar(
                      //     content: Text('Data is in processing.')));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
