#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>

char const *LINUX_PATH_FULL_CHARGE = "/sys/class/power_supply/BAT0/charge_full";
char const *LINUX_PATH_CURRENT_CHARGE = "/sys/class/power_supply/BAT0/charge_now"; 

int main() {
	std::ifstream f1, f2;
	f1.open(LINUX_PATH_FULL_CHARGE);
	f2.open(LINUX_PATH_CURRENT_CHARGE);

	std::stringstream s1, s2;

	s1 << f1.rdbuf();
	s2 << f2.rdbuf();

	double full = std::stod(s1.str());
	double curr = std::stod(s2.str());

	int percent = (int) std::round(curr/full * 100); 

	std::cout << percent << std::endl;
} 
