#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n)
{
    unsigned int  numberOfBits = sizeof(n) * 8;
    unsigned int reverseNum = 0, i, temp;
      
    for (i = 0; i < numberOfBits; i++)
    {
        temp = (n & (1 << i));
        if(temp)
        {
            reverseNum |= (1 << ((numberOfBits - 1) - i));
        }
    }
       
    return reverseNum;
}
