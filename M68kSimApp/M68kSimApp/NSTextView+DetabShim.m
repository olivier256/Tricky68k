// NSTextView+DetabShim.m
#import "NSTextView+DetabShim.h"

@implementation NSTextView (DetabShim)

- (void)performDetabWithNumberOfSpaces:(NSUInteger)spaces {
    if (spaces == 0) {
        return; // rien à faire
    }

    NSString *tabReplacement = [@"" stringByPaddingToLength:spaces
                                                 withString:@" "
                                            startingAtIndex:0];
    NSString *content = self.string ?: @"";
    NSString *detabbed = [content stringByReplacingOccurrencesOfString:@"\t"
                                                            withString:tabReplacement];

    // Remplace le contenu
    [self setString:detabbed];
}

@end
