import 'package:flutter/material.dart';

class MyApp8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPI Payment UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UpiPaymentScreen(),
    );
  }
}

class UpiPaymentScreen extends StatefulWidget {
  @override
  _UpiPaymentScreenState createState() => _UpiPaymentScreenState();
}

class _UpiPaymentScreenState extends State<UpiPaymentScreen> {
  String _enteredAmount = '';
  String _beneficiaryName = '';
  String _upiId = '';
  String _selectedPaymentMethod = '';

  void _makePayment() {
    // Implement your payment logic here
    // This method will be called when the user initiates the payment
    // You can integrate any UPI payment SDK or API here
    // For demonstration purpose, I'm just printing the entered details
    print('Making payment:');
    print('Amount: $_enteredAmount');
    print('Beneficiary Name: $_beneficiaryName');
    print('UPI ID: $_upiId');
    print('Payment Method: $_selectedPaymentMethod');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPI Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter Payment Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Amount',
                prefixIcon: Icon(Icons.attach_money),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _enteredAmount = value;
                });
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Beneficiary Name',
                prefixIcon: Icon(Icons.person),
              ),
              onChanged: (value) {
                setState(() {
                  _beneficiaryName = value;
                });
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'UPI ID',
                prefixIcon: Icon(Icons.payment),
              ),
              onChanged: (value) {
                setState(() {
                  _upiId = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Select Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField(
              value: _selectedPaymentMethod.isEmpty ? null : _selectedPaymentMethod,
              hint: Text('Select Payment Method'),
              items: ['UPI', 'Credit Card', 'Debit Card', 'Net Banking']
                  .map((method) => DropdownMenuItem(
                        value: method,
                        child: Text(method),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value.toString();
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _enteredAmount.isEmpty || _beneficiaryName.isEmpty || _upiId.isEmpty || _selectedPaymentMethod.isEmpty
                  ? null
                  : _makePayment,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Make Payment',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
