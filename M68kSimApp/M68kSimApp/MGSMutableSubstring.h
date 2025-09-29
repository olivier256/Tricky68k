//
//  MGSMutableSubstring.h
//  Tricky68k
//

#import <Foundation/Foundation.h>

@interface MGSMutableSubstring : NSObject

@property (nonatomic, strong) NSMutableString *string;
@property (nonatomic) NSRange range;

- (instancetype)initWithString:(NSString *)string range:(NSRange)range;
- (NSString *)substring;
- (void)replaceWithString:(NSString *)replacement;

@end
