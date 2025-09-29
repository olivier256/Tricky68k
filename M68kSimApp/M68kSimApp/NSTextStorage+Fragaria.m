//
//  NSTextStorage+Fragaria.m
//  Tricky68k
//

#import "NSTextStorage+Fragaria.h"

@implementation NSTextStorage (FragariaCompat)

- (NSUInteger)mgs_lineCount {
    __block NSUInteger count = 0;
    [self.string enumerateSubstringsInRange:NSMakeRange(0, self.string.length)
                                    options:NSStringEnumerationByLines
                                 usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        count++;
    }];
    return count;
}

- (NSUInteger)mgs_firstCharacterInRow:(NSUInteger)row {
    __block NSUInteger currentRow = 0;
    __block NSUInteger charIndex = NSNotFound;
    
    [self.string enumerateSubstringsInRange:NSMakeRange(0, self.string.length)
                                    options:NSStringEnumerationByLines | NSStringEnumerationSubstringNotRequired
                                 usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        if (currentRow == row) {
            charIndex = enclosingRange.location;
            *stop = YES;
        }
        currentRow++;
    }];
    
    return (charIndex == NSNotFound) ? self.string.length : charIndex;
}


@end
