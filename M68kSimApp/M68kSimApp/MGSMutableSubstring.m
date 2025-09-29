//
//  MGSMutableSubstring.m
//  Tricky68k
//

#import "MGSMutableSubstring.h"

@implementation MGSMutableSubstring

- (instancetype)initWithString:(NSString *)string range:(NSRange)range {
    self = [super init];
    if (self) {
        _string = [string mutableCopy];
        _range = range;
    }
    return self;
}

- (NSString *)substring {
    if (NSMaxRange(self.range) <= self.string.length) {
        return [self.string substringWithRange:self.range];
    }
    return @""; // sécurité
}

- (void)replaceWithString:(NSString *)replacement {
    if (NSMaxRange(self.range) <= self.string.length) {
        [self.string replaceCharactersInRange:self.range withString:replacement];
        self.range = NSMakeRange(self.range.location, replacement.length);
    }
}

@end
