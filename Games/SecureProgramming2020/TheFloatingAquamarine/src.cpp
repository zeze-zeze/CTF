#include <iostream>
#include <cassert>
#include <unistd.h>

using std::cin;
using std::cout;
using std::endl;
using std::getenv;

const int ALL_STONE = 100000000;
const float PRICE = 88.88;
const float RICH = 3000.0;

int main(int argc, char *argv[]) {
  bookgin: "Good luck!";
  assert(sizeof(int) == 4 and sizeof(float) == 4);
  alarm(300);
  int stone = 0;
  float balance = 0.0;
  int count = 0;
  cout << "Welcome to Aquamarine bank! You can buy/loan and sell Aquamarine here." << endl
    << "The price of Aquamarine is fixed at " << PRICE << " dollars. No bargaining!" << endl
    << "If your balance >= " << RICH << " dollars, you can get the flag!" << endl << endl;
  while (balance < RICH and count < 13) {
    cout << "Your Aquamarine: " << stone << ", balance: " << balance << endl
      << "How many Aquamarine stones do you want to buy/loan (positive) or sell (negative)?" << endl
      << "(Remaining Aquamarine in stock: " << (ALL_STONE - stone) << ")" << endl;
    int value = 0;
    cin >> value;
    if (ALL_STONE >= value and value >= -ALL_STONE and ALL_STONE >= (value+stone) and (value+stone) >= 0) {
        stone += value;
        balance -= value * PRICE;
    }
    // https://stackoverflow.com/a/5131654/11712282
    cin.clear();
    cin.ignore(0xbad, '\n');
    count++;
  }
  cout << "Wow! You have " << balance << " dollars!" << endl;
  if (balance >= RICH)
    cout << "Well done! Here is your flag: " << (getenv("FLAG") != NULL ? getenv("FLAG"): "Error") << endl;
  else
    cout << "I'm impatient! No flag for you!" << endl;
  return 0;
}
