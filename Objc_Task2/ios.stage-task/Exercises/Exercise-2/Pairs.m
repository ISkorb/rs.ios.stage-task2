#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number
{
    @autoreleasepool
    {
        int size = (int)array.count;
        int arrayOfInt[size];
        
        for(int i = 0; i < size; i++)
        {
            int currentValue = [(NSNumber *)[array objectAtIndex:i] intValue];
            arrayOfInt[i] = currentValue;
        }
        
        int differValue = [(NSNumber *)number intValue];
        int count = 0;
        
        for(int j = size -1; j >= 0; j--)
        {
            for(int k = size - 1; k >= 0; k--)
            {
                int difference = arrayOfInt[j] - arrayOfInt[k];
                
                if(difference == differValue)
                {
                    count++;
                }
            }
        }
        
        return (NSInteger)count;
    }
    return 0;
}

@end
