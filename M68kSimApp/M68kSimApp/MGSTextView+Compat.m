#import "MGSTextView+Compat.h"

@implementation MGSTextView (Compat)

- (void)performDetabWithNumberOfSpaces:(NSUInteger)spaces {
    if (spaces == 0) return;
    
    NSString *text = self.string;
    if (!text) return;

    NSString *spacesStr = [@"" stringByPaddingToLength:spaces
                                            withString:@" "
                                       startingAtIndex:0];
    NSString *detabbed = [text stringByReplacingOccurrencesOfString:@"\t"
                                                         withString:spacesStr];

    [self.textStorage replaceCharactersInRange:NSMakeRange(0, text.length)
                                    withString:detabbed];
}

- (BOOL)usesTabs {
    // NSTextView n’a plus usesTabs dans v2, mais textView utilise le tabWidth
    // On fait un proxy simple : si tabWidth > 0, on considère que tabs sont actifs
    return (self.tabWidth > 0);
}

- (NSUInteger)tabWidth {
    // NSTextView expose tabStops via NSTextTab, mais pas tabWidth directement.
    // On choisit une valeur par défaut si absente (4).
    if (self.defaultParagraphStyle) {
        NSArray<NSTextTab *> *tabs = self.defaultParagraphStyle.tabStops;
        if (tabs.count > 0) {
            CGFloat firstTab = tabs.firstObject.location;
            if (firstTab > 0) return (NSUInteger)firstTab;
        }
    }
    return 4; // fallback
}

@end
