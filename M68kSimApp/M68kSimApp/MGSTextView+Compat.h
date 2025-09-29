#import <Cocoa/Cocoa.h>
#import "MGSTextView.h"

// Catégorie de compatibilité pour MGSTextView (Fragaria v2)
@interface MGSTextView (Compat)

/// Ancienne API Fragaria v1 – remplace les tabulations par des espaces
- (void)performDetabWithNumberOfSpaces:(NSUInteger)spaces;

/// Retourne YES si l’éditeur doit utiliser des tabulations (équiv. de usesTabs dans NSTextView v1)
- (BOOL)usesTabs;

/// Largeur de tabulation (en nombre d’espaces)
- (NSUInteger)tabWidth;

@end
