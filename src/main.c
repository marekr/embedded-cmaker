#include <asf.h>


int main (void)
{
    system_init();
    delay_init();

    int i = 0;
    while(1)
    {
        i++;
        delay_ms(100);
    }
}