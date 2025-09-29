// MGSFragariaView.h
// Shim pour compatibilité avec ancien code utilisant MGSFragariaView

#import <Cocoa/Cocoa.h>
#import <MGSFragaria/MGSFragaria.h>

@interface MGSFragariaView : MGSFragaria

// Redéfinition des méthodes anciennes
- (void)replaceTextStorage:(NSTextStorage *)textStorage;
- (NSTextView *)textView;

// Les options classiques de Fragaria
- (void)setSyntaxDefinitionName:(NSString *)name;
- (void)setSyntaxColoured:(BOOL)flag;
- (void)setShowsLineNumbers:(BOOL)flag;

- (BOOL)indentWithSpaces;
- (NSUInteger)tabWidth;
- (NSView *)view;

@end
