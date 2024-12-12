import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile and Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the Profile Page',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomerInformationForm(),
                  ),
                );
              },
              child: Text('Go to Customer Information Form'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerInformationForm extends StatefulWidget {
  const CustomerInformationForm({Key? key}) : super(key: key);

  @override
  _CustomerInformationFormState createState() =>
      _CustomerInformationFormState();
}

class _CustomerInformationFormState extends State<CustomerInformationForm> {
  // Controllers for text fields
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _creditLimitController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _landmarkController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Information'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _mobileNumberController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _companyNameController,
              decoration: InputDecoration(
                labelText: 'Company Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _creditLimitController,
              decoration: InputDecoration(
                labelText: 'Credit Limit',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _pincodeController,
              decoration: InputDecoration(
                labelText: 'Pincode',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _landmarkController,
              decoration: InputDecoration(
                labelText: 'Landmark',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _stateController,
              decoration: InputDecoration(
                labelText: 'State',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Collect form data
                Map<String, String> formData = {
                  'Full Name': _fullNameController.text,
                  'Mobile Number': _mobileNumberController.text,
                  'Email': _emailController.text,
                  'Company Name': _companyNameController.text,
                  'Credit Limit': _creditLimitController.text,
                  'Address': _addressController.text,
                  'Pincode': _pincodeController.text,
                  'Landmark': _landmarkController.text,
                  'City': _cityController.text,
                  'State': _stateController.text,
                };

                // TODO: Implement data submission logic
                print(formData);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose controllers
    _fullNameController.dispose();
    _mobileNumberController.dispose();
    _emailController.dispose();
    _companyNameController.dispose();
    _creditLimitController.dispose();
    _addressController.dispose();
    _pincodeController.dispose();
    _landmarkController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    super.dispose();
  }
}
