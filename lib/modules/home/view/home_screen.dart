import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import '../../../utils/widgets.dart';
import '../view_model/home_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends ConsumerWidget { 
  @override
  Widget build(BuildContext context, WidgetRef ref) { 
    ref.read(homeViewModelProvider); 
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(width: 10),
            SvgPicture.asset('assets/Logo.svg'),   
            SizedBox(width: 8),
          ],
        ),
        leadingWidth: 160,
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/Search.svg'),
            onPressed: () {
              print("Search icon pressed");
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/Menu.svg'),
            onPressed: () {
              print("Menu icon pressed");
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ToggleSwitch(),
                SizedBox(height: 24),
                Text(
                  "Minimum bid",
                  style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF1B1A1A),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "You'll receive bids on this item",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Epilogue',
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                CurrencyInputField(),
                SizedBox(height: 24),
                TitleDropdownWidget(
                  title: 'Starting Date',
                  items: ['Right after listing'],
                ),
                SizedBox(height: 24),
                TitleDropdownWidget(
                  title: 'Expiration Date',
                  items: ['3 days'],
                ),
                SizedBox(height: 32),
                BlueGradientButton(
                  text: "Mint NFT",
                  onPressed: () {
                    print("Mint NFT button pressed");
                  },
                ),
                SizedBox(height: 64),
                Center(
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/Logo.svg'),   
                      Text(
                        "The New Creative Economy",
                        style: TextStyle(
                          fontFamily: 'Epilogue',
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24),
                BlueGradientButton(
                  text: "Earn now",
                  onPressed: () {
                    print("Earn now button pressed");
                  },
                ),
                SizedBox(height: 16),
                WhiteButton(
                  text: "Discover more",
                  onPressed: () {
                    print("Discover more button pressed");
                  },
                ),
                SizedBox(height: 40),
                FooterSection(),
              ],
            ),
          );
        },
      ),
    );
  }
}