#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    NSString * stringNoSpaces = [[NSString alloc] initWithString:[string stringByReplacingOccurrencesOfString:@" "
                                                                                                    withString:@""]];
    NSUInteger rows = floor(sqrt([stringNoSpaces length]));
    NSUInteger cells = ceil(sqrt([stringNoSpaces length]));

    if( rows * cells < [stringNoSpaces length]) {
        rows++;
    }
    
    NSMutableArray * matrix = [[NSMutableArray alloc] initWithCapacity:rows];
    
    for (int i = 0; i < rows; i++) {
        NSUInteger len = cells;
        
        if (i == rows -1) {
            len = [stringNoSpaces length] - (cells * i);
        }
        
        matrix[i] = [[NSString alloc] initWithString:[stringNoSpaces substringWithRange:NSMakeRange(i*cells, len)]];
    }
    
    NSMutableString * result = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < cells; i++){
        for (NSUInteger j = 0; j < rows; j++) {
            if( i < [matrix[j] length] ){
                [result appendString:[NSString stringWithFormat:@"%c", [matrix[j] characterAtIndex:i]]];
            }
        }
        [result appendString:@" "];
    }
    
    return [result substringToIndex:[result length] - 1];
}

@end
