//
//  GithubBuggerAppDelegate.m
//  github bugger
//
//  Created by André Rodrigues on 2/24/13.
//  Copyright (c) 2013 Andre Rodrigues. All rights reserved.
//

#import "GithubBuggerAppDelegate.h"
#import <UAGithubEngine/UAGithubEngine.h>

@implementation GithubBuggerAppDelegate

@synthesize window=_window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    /*
    UAGithubEngine *engine = [[UAGithubEngine alloc] initWithUsername:@"username" password:@"password" withReachability:YES];
    
    [engine repositoriesWithSuccess:^(id response) {
        NSLog(@"Got an array of repos: %@", response);
    } failure:^(NSError *error) {
        NSLog(@"Oops: %@", error);
    }];
    
    [engine user:@"andrerod" isCollaboratorForRepository:@"UAGithubEngine" success:^(BOOL collaborates) {
        NSLog(@"%d", collaborates);
    } failure:^(NSError *error){
        NSLog(@"D'oh: %@", error);
    }];
     */
}

- (void)awakeFromNib{
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMenu];
    [statusItem setTitle:@"Status"];
    [statusItem setHighlightMode:YES];

    NSMenuItem * quitStatusItem = [statusMenu itemWithTitle:@"Quit"];
    [quitStatusItem setTarget:self];
    [quitStatusItem setAction:@selector(quitAction:)];
}

- (IBAction)quitAction:(id)sender {
    [NSApp terminate:sender];
}

- (IBAction)settingsAction:(id)sender {
    NSWindow * settingsWindow = [self window]; // Get the window to open
    [settingsWindow makeKeyAndOrderFront:nil];
}
@end
