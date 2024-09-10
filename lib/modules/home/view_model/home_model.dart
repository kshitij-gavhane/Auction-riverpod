import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a provider for HomeViewModel
final homeViewModelProvider = Provider((ref) => HomeViewModel());

class HomeViewModel {
  bool isAuctionSelected = false;

  void selectFixedPrice() {
    isAuctionSelected = false;
    print("Fixed price selected");
  }

  void selectAuction() {
    isAuctionSelected = true;
    print("Auction selected");
  }
}