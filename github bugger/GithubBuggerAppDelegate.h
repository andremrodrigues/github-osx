//
//  GithubBuggerAppDelegate.h
//  github bugger
//
//  Created by André Rodrigues on 2/24/13.
//  Copyright (c) 2013 Andre Rodrigues. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GithubBuggerAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem * statusItem;
}

@property (weak) IBOutlet NSMenuItem *quit;
@property (assign) IBOutlet NSWindow *window;

- (IBAction)quitAction:(id)sender;
- (IBAction)settingsAction:(id)sender;

@end
