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
    // Insert code here to initialize your application
    /*
    UAGithubEngine *engine = [[UAGithubEngine alloc] initWithUsername:@"aUser" password:@"aPassword" withReachability:YES];
    
    [engine repositoriesWithSuccess:^(id response) {
        NSLog(@"Got an array of repos: %@", response);
    } failure:^(NSError *error) {
        NSLog(@"Oops: %@", error);
    }];
    
    [engine user:@"this_guy" isCollaboratorForRepository:@"UAGithubEngine" success:^(BOOL collaborates) {
        NSLog(@"%d", collaborates);
    } failure:^(NSError *error){
        NSLog(@"D'oh: %@", error);
    }];*/
}

- (void)awakeFromNib{
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMenu];
    [statusItem setTitle:@"Status"];
    [statusItem setHighlightMode:YES];
}

@end
