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

@property (assign) IBOutlet NSWindow *window;

@end
