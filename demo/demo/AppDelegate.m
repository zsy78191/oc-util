//
//  AppDelegate.m
//  demo
//
//  Created by 张超 on 2019/1/10.
//  Copyright © 2019 orzer. All rights reserved.
//

#import "AppDelegate.h"
#import "GCDQuene.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self test];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (void)test;
{
    GCDQuene.main(^{
        NSLog(@"1");
    });
    
    NSLog(@"%@", [[GCDQuene mainQueneInstance].quene_t class]);
}

@end
