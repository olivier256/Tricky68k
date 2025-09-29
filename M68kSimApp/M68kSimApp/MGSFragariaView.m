// MGSFragariaView.m
// Shim pour compatibilité avec ancien code utilisant MGSFragariaView

#import "MGSFragariaView.h"

@implementation MGSFragariaView

- (void)replaceTextStorage:(NSTextStorage *)textStorage {
    // Dans Fragaria v2, il n'y a plus replaceTextStorage:,
    // mais on peut accéder directement au textView.
    NSTextView *tv = [self textView];
    if (tv) {
        [tv.layoutManager replaceTextStorage:textStorage];
    }
}

- (NSTextView *)textView {
    return [super textView];
}

- (void)setSyntaxDefinitionName:(NSString *)name {
    // [super setSyntaxDefinitionName:name];
    NSLog(@"[MGSFragariaView] setSyntaxDefinitionName: not implemented in shim.");
}

- (void)setSyntaxColoured:(BOOL)flag {
    [super setSyntaxColoured:flag];
}

- (void)setShowsLineNumbers:(BOOL)flag {
    [super setShowsLineNumbers:flag];
}

- (BOOL)indentWithSpaces {
    // MGSFragariaPrefsIndentWithSpaces est une clé utilisée dans Fragaria v2
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"MGSFragariaPrefsIndentWithSpaces"];
}

- (NSUInteger)tabWidth {
    NSInteger width = [[NSUserDefaults standardUserDefaults] integerForKey:@"MGSFragariaPrefsTabWidth"];
    return width > 0 ? (NSUInteger)width : 4;
}

- (NSView *)view {
    return [super view];
}


- (NSResponder *)nextResponder {
    // forward au conteneur NSView réel de Fragaria
    return [[self view] nextResponder];
}

- (void)setNextResponder:(NSResponder *)aResponder {
    [[self view] setNextResponder:aResponder];
}

@end
