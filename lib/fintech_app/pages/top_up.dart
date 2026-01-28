import 'package:flutter/material.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  String selectedProvider = "Bank Of America";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.outlined(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("Top Up"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bank Transfer",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            PaymentProvider(
              image: "assets/images/bank_of_america.jpg",
              name: "Bank Of America",
              account: "**** **** **** 1990",
              isSelected: selectedProvider == "Bank Of America",
              onChanged: (value) {
                if (value == true) {
                  setState(() {
                    selectedProvider = "Bank Of America";
                  });
                }
              },
            ),
            PaymentProvider(
              image: "assets/images/us_bank.png",
              name: "U.S Bank",
              account: "**** **** **** 1990",
              isSelected: selectedProvider == "U.S Bank",
              onChanged: (value) {
                if (value == true) {
                  setState(() {
                    selectedProvider = "U.S Bank";
                  });
                }
              },
            ),
            Text(
              "Other",
              style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
            ),
            PaymentProvider(
              image: "assets/images/paypal.jpg",
              name: "Paypal",
              account: "**** **** **** 1990",
              isSelected: selectedProvider == "Paypal",
              onChanged: (value) {
                if (value == true) {
                  setState(() {
                    selectedProvider = "Paypal";
                  });
                }
              },
            ),
            PaymentProvider(
              image: "assets/images/apple.png",
              name: "Apple pay",
              account: "**** **** **** 1990",
              isSelected: selectedProvider == "Apple pay",
              onChanged: (value) {
                if (value == true) {
                  setState(() {
                    selectedProvider = "Apple pay";
                  });
                }
              },
            ),
            PaymentProvider(
              image: "assets/images/google.png",
              name: "Google pay",
              account: "Easy payment",
              isSelected: selectedProvider == "Google pay",
              onChanged: (value) {
                if (value == true) {
                  setState(() {
                    selectedProvider = "Google pay";
                  });
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=> TopUpPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: Size(double.maxFinite, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Confirm",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentProvider extends StatelessWidget {
  const PaymentProvider({
    super.key,
    required this.image,
    required this.name,
    required this.account,
    required this.isSelected,
    required this.onChanged,
  });

  final String image;
  final String name;
  final String account;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(radius: 15, backgroundImage: AssetImage(image)),
          title: Text(name),
          subtitle: Text(account),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio.adaptive(
              value: true,
              groupValue: isSelected,
              onChanged: onChanged,
              activeColor: Color.fromARGB(255,16,80, 98),
            ),
          ),
          contentPadding: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.black12),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
