#include <stdio.h>

int main() {
    int secret = 0x01234567;
    char name[20] = {0};
    read(0, name, 0x100);
    if (secret != 0x01234567) {
        puts("Wow! Here's the secret flag byu22ind{ThisIsJustTheBeginning;)}");
    } else {
        puts("I guess you're not cool enough to see my secret");
    }
    printf("Heres a tip to help you, your secret was: %x\n",secret);

    return 0;
}