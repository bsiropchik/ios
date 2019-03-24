#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    int result = 0;
    
    for(NSNumber *n in array){
        result += [n intValue];
    }
    
    return @(result);
}

@end
