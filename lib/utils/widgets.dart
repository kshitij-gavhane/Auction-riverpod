
import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool isAuctionSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isAuctionSelected = false;
              });
              print("Fixed price selected");
            },
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                color: !isAuctionSelected
                    ? Color.fromRGBO(0, 56, 245, 1)
                    : Colors.grey[350],
                borderRadius: !isAuctionSelected
                    ? BorderRadius.horizontal(left: Radius.circular(30))
                    : BorderRadius.horizontal(
                        left: Radius.circular(30),
                        right: Radius.circular(0),
                      ),
              ),
              child: Center(
                child: Text(
                  "Fixed price",
                  style: TextStyle(
                    color: !isAuctionSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isAuctionSelected = true;
              });
              print("Auction selected");
            },
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                gradient: isAuctionSelected
                    ? LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 56, 245, 1),
                          Color.fromRGBO(159, 3, 255, 1)
                        ],
                      )
                    : null,
                color: !isAuctionSelected ? Colors.grey[350] : null,
                borderRadius: isAuctionSelected
                    ? BorderRadius.horizontal(right: Radius.circular(30))
                    : BorderRadius.horizontal(
                        right: Radius.circular(30),
                        left: Radius.circular(0),
                      ),
              ),
              child: Center(
                child: Text(
                  "Auction",
                  style: TextStyle(
                    color: isAuctionSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CurrencyInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 64,
          child: DropdownButton<String>(
            isExpanded: true,
            items: <String>['ETH'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
            underline: Container(),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: '0.00',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.cancel, size: 20),
                onPressed: () {
                  print("Clear input field");
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BlueGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  BlueGradientButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(0, 56, 245, 1),
            Color.fromRGBO(159, 3, 255, 1)
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class WhiteButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  WhiteButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.purple,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class TitleDropdownWidget extends StatelessWidget {
  final String title;
  final List<String> items;

  TitleDropdownWidget({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            print("Selected: $newValue");
          },
        ),
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterLink(text: "Instagram", onPressed: () {
                  print("Instagram link pressed");
                }),
                FooterLink(text: "Twitter", onPressed: () {
                  print("Twitter link pressed");
                }),
                FooterLink(text: "Discord", onPressed: () {
                  print("Discord link pressed");
                }),
                FooterLink(text: "Blog", onPressed: () {
                  print("Blog link pressed");
                }),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FooterLink(text: "About", onPressed: () {
                  print("About link pressed");
                }),
                FooterLink(text: "Community Guidelines", onPressed: () {
                  print("Community Guidelines link pressed");
                }),
                FooterLink(text: "Terms of Service", onPressed: () {
                  print("Terms of Service link pressed");
                }),
                FooterLink(text: "Privacy", onPressed: () {
                  print("Privacy link pressed");
                }),
                FooterLink(text: "Careers", onPressed: () {
                  print("Careers link pressed");
                }),
                FooterLink(text: "Help", onPressed: () {
                  print("Help link pressed");
                }),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          "© 2021 Openart",
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }
}

class FooterLink extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  FooterLink({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}