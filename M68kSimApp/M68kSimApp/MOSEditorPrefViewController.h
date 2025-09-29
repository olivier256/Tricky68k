//
//  MOSEditorPrefViewController.h
//  Tricky68k
//
//  Created by Daniele Cattaneo on 15/03/15.
//  Copyright (c) 2015 Daniele Cattaneo. 
//

#import <Cocoa/Cocoa.h>
#import <MGSFragaria/MGSFragariaPreferences.h>
#import "MOSColourSchemeListController.h"


@interface MOSColourSchemeTableViewDataSource: NSObject <NSTableViewDataSource>

@property (nonatomic) BOOL showGroupProperties;
@property (nonatomic) BOOL showGroupGlobalProperties;
@property (nonatomic) BOOL showHeaders;
@property (nonatomic, strong, nullable) MGSColourScheme *currentScheme;

@end


@interface MOSEditorPrefViewController : NSViewController {
  NSFont *editorFont;
}

@property (nonatomic) IBOutlet NSUserDefaultsController * _Nullable userDefaultsController;
@property (nonatomic) IBOutlet NSObjectController * _Nullable colorSchemeController;
@property (nonatomic) IBOutlet MOSColourSchemeTableViewDataSource * _Nullable colourSchemeTableViewDs;

@end
