#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    unsigned long len = [array count];
    
    NSMutableArray * digitsArray = [NSMutableArray new];
    for (NSString*elem in array) {
        [digitsArray addObject:[[NSArray alloc]
            initWithArray:[elem componentsSeparatedByString:@" "]]];
    };
    
    int firstSum = 0;
    int secondSum = 0;
    
    for (int i = 0, j = @(len - 1).intValue ; i < len || j >= 0; i++,j-- ) {
        firstSum += [digitsArray[i][j] intValue];
    }
    
    for (int i = 0; i < len ; i++) {
        secondSum += [digitsArray[i][i] intValue];
    }
        
    return [NSNumber numberWithInt:abs(firstSum - secondSum)];
}

@end
