// MGSColourSchemeTableCellView.h
#import <Cocoa/Cocoa.h>

@interface MGSColourSchemeTableCellView : NSTableCellView

@property (nonatomic, copy) NSString *globalPropertyKeyPath;
@property (nonatomic, strong) NSButton *enabled;
@property (nonatomic, strong) NSColorWell *colorWell;

@end

