#import <MGSFragaria/MGSFragaria.h>

@protocol MGSBreakpointDelegate;

@interface MGSFragaria (Breakpoints)

@property (nonatomic, weak) id<MGSBreakpointDelegate> breakpointDelegate;

- (void)reloadBreakpointData;

@end

