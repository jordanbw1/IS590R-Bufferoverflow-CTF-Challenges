#include <stdio.h>

void printFlag() {
    puts("Dang! This function isn't even callable! I don't know how you pulled this off... but for your work, here's a flag! byu22ind{ICommendYourWork}");
}

void failure() {
    puts("I'm just as functional as ever!");
}

int main() {
    int secret = 0xfeefdeed;
    int comparison = 0x5249434B;
    char name[8] = {0};
    read(0, name, 0x100);
    
    if (secret > comparison) {
        // failure();
        printFlag();
    }
    else {
        // printFlag();
        failure();
    }

    printf("Heres a tip to help you, your secret was: %x\n",secret);
    printf("Heres a tip to help you, your comparison was: %x\n",comparison);

    return 0;
}