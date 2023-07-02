import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  String _selectedPaymentMode = 'Credit Card';
  bool _addOn1Selected = false;
  bool _addOn2Selected = false;

  double _productPrice = 100.0;
  double _addOn1Price = 10.0;
  double _addOn2Price = 20.0;

  double get _subtotal => _productPrice + (_addOn1Selected ? _addOn1Price : 0.0) + (_addOn2Selected ? _addOn2Price : 0.0);
  double get _total => _subtotal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Checkout"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Mode of Payment',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              ListTile(
                title: const Text('Credit Card'),
                leading: Radio(
                  value: 'Credit Card',
                  groupValue: _selectedPaymentMode,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMode = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('PayPal'),
                leading: Radio(
                  value: 'PayPal',
                  groupValue: _selectedPaymentMode,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMode = value.toString();
                    });
                  },
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Summary and Fees',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              ListTile(
                title: Text('Item Price'),
                trailing: Text('75',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text('Shipping Fee'),
                trailing: Text('5',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text('Supplier Subsidy'),
                trailing: Text('10'),
              ),
              ListTile(
                title: Text('Transaction Fee'),
                trailing: Text('5'),
              ),
              ListTile(
                title: Text('Extra Fees'),
                trailing: Text('5'),
              ),       
              SizedBox(height: 32),
              Text(
                'Subtotal: \$$_subtotal',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Total: \$$_total',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Button action
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: Size(double.infinity, 0), // Full width button
                  backgroundColor: Colors.green, // Set the button background color
                ),
                child: Text(
                  'Complete Order',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // Set the text color
                  ),
                ),
              ),
              // ListTile(
              //   title: Text('Bonuses', style: TextStyle(
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              ListTile(
                title: Text('Loyalty Points'),
                trailing: Text('5'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';


// class Checkout extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Shipping Address',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 16),
//             Text('Enter your shipping address here'),
//             SizedBox(height: 32),
//             Text(
//               'Payment Information',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 16),
//             Text('Enter your payment information here'),
//             SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle checkout logic here
//               },
//               child: Text('Place Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
