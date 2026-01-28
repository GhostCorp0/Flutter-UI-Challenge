import 'package:flutter/material.dart';

class TopUpBottomSheet extends StatefulWidget {
  final String selectedProvider;
  final String account;
  final String image;

  const TopUpBottomSheet({
    super.key,
    required this.selectedProvider,
    required this.account,
    required this.image,
  });

  @override
  State<TopUpBottomSheet> createState() => _TopUpBottomSheetState();
}

class _TopUpBottomSheetState extends State<TopUpBottomSheet> {
  double amount = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(widget.image),
            ),
            title: Text(widget.selectedProvider),
            subtitle: Text(widget.account),
            trailing: Icon(
              Icons.keyboard_arrow_down,
              size: 25,
              color: Colors.grey,
            ),
            contentPadding: EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.black12),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Amount",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Text(
                "\$ ${amount.toStringAsFixed(0)}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Slider(
            min: 5,
            max: 500,
            activeColor: Color.fromARGB(255, 16, 80, 98),
            value: amount,
            onChanged: (value) {
              setState(() {
                amount = value;
              });
            },
          ),
          SizedBox(height: 20),
          Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [5, 10, 15, 20, 25, 50, 100, 250].map((value) {
                return InkWell(
                  onTap:(){
                    setState(() {
                      amount = value.toDouble();
                    });
                  } ,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 70,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: amount == value
                          ? Color.fromARGB(255, 16, 80, 98)
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "\$$value",
                      style: TextStyle(
                        color: amount == value ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,

                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height:60,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              fixedSize: Size(double.maxFinite, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              "Top Up ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
