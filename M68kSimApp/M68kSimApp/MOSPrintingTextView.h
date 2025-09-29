//
//  MOSPrintingTextView.h
//  Tricky68k
//
//  Created by Daniele Cattaneo on 06/02/15.
//  Copyright (c) 2015 Daniele Cattaneo. 
//

#import <Cocoa/Cocoa.h>
#import <MGSFragaria/MGSFragaria.h>


extern NSString * const MOSPrintFont;
extern NSString * const MOSPrintColorScheme;


@interface MOSPrintingTextView : NSTextView

@property (nonatomic) NSInteger tabWidth;

@end
