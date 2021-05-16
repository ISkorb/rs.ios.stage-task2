#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray
{
    @autoreleasepool
    {
        if(numbersArray != nil && numbersArray.count > 0)
        {
            int arrayOfInt[4] = {0, 0, 0, 0};
            
            for (int i = 0; i < numbersArray.count; i++)
            {
                int currentValue = [(NSNumber *)[numbersArray objectAtIndex:i] intValue];
                
                if(currentValue > 255)
                {
                    return @"The numbers in the input array can be in the range from 0 to 255.";
                }
                else if(currentValue < 0)
                {
                    return @"Negative numbers are not valid for input.";
                }
                else
                {
                    arrayOfInt[i] = currentValue;
                }
            }
            
            NSString* result = [NSString stringWithFormat: @"%i.%i.%i.%i", arrayOfInt[0], arrayOfInt[1], arrayOfInt[2], arrayOfInt[3]];
            return result;
        }
        return @"";
    }
    return nil;
}

@end
