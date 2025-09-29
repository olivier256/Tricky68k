//
//  NSTextStorage+Fragaria.h
//  Tricky68k
//

#import <Cocoa/Cocoa.h>

@interface NSTextStorage (FragariaCompat)

- (NSUInteger)mgs_lineCount;

- (NSUInteger)mgs_firstCharacterInRow:(NSUInteger)row;

@end
