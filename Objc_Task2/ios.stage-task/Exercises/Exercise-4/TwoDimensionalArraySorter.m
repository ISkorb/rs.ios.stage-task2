#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array
{
    @autoreleasepool
    {
        if(array == nil || ![array[0] isKindOfClass:[NSArray class]])
        {
            return @[];
        }
        
        NSMutableArray* numbersArray = [[NSMutableArray alloc] init];
        NSMutableArray* stringsArray = [[NSMutableArray alloc] init];
        
        for(NSArray* subArray in array)
        {
            if([subArray[0] isKindOfClass:[NSString class]])
            {
                for(NSString* str in subArray)
                {
                    [stringsArray addObject:str];
                }
            }
            
            if([subArray[0] isKindOfClass:[NSNumber class]])
            {
                for(NSNumber* num in subArray)
                {
                    [numbersArray addObject:num];
                }
            }
        }
        
        NSSortDescriptor* lowesToHighest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
        NSSortDescriptor* highestToLowest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
        
        if(stringsArray.count > 0 && numbersArray.count > 0)
        {
            [numbersArray sortUsingDescriptors:[NSArray arrayWithObject:lowesToHighest]];
            [stringsArray sortUsingDescriptors:[NSArray arrayWithObject:highestToLowest]];
            
            NSMutableArray* mixedArray = [[NSMutableArray alloc] init];
            [mixedArray addObject:numbersArray];
            [mixedArray addObject:stringsArray];
            
            return mixedArray;
        }
        else if(stringsArray.count > 0)
        {
            [stringsArray sortUsingDescriptors:[NSArray arrayWithObject:lowesToHighest]];
            return stringsArray;
        }
        else if(numbersArray.count > 0)
        {
            [numbersArray sortUsingDescriptors:[NSArray arrayWithObject:lowesToHighest]];
            return numbersArray;
        }
    }
    return @[];
}

@end
