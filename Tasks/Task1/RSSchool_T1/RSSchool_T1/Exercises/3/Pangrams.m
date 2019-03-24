#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    NSString * lowerCaseString = [[NSString alloc] initWithString:[[string stringByReplacingOccurrencesOfString:@" " withString:@""] lowercaseString]];
    
    NSString * alphabet = @"abcdefghijklmnopqrstuvwxyz";
    
    for (NSUInteger i = 0; i < alphabet.length; i++) {
        if (![lowerCaseString containsString:[NSString stringWithFormat:@"%c", [alphabet characterAtIndex:i]]])
            return NO;
    }
    
    return YES;
}

@end
