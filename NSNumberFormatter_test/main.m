//
//  main.m
//  NSNumberFormatter_test
//
//  Created by Gregory Casamento on 12/8/21.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSException.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSNumberFormatter *nf = [NSNumberFormatter new];
        NSString *expected = @"0.9";
        NSString *got;
        [nf setMaximumFractionDigits:3];
        got = [nf stringFromNumber:[NSNumber numberWithDouble:0.9]];
        // NSAssert([expected isEqualToString:got], @"number formatter botch, expected \"%@\", got \"%@\"", expected, got);
        
        if ([expected isEqualToString: got])
        {
            NSLog(@"Pass");
        }
        else
        {
            NSLog(@"Fail");
        }
        
    }
    return 0;
}
