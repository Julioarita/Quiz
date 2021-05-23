/***********************************************************************************
Julio Arita 21/05/2021

It could be also possible to use a 'pointer', probably that would be the
best way to do it.
But we'll be constrained to vector length, and as I wasn't given with length restriction.
Since I was not limited to the way in how to get the string, I decided to do it like so.

************************************************************************************/
#include <iostream>

// Global variables declarations
std::string user_word;// We can use a char vector with a defined length as well.
int counter = 0;

int main(){
    std::cout << "Write whatever you want" << std::endl;
    std::getline(std::cin,user_word); 

    while(user_word[++counter]){}
    
    std::cout << "The length is: " << counter << std::endl;
    return 0;
}