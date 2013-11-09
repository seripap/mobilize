//
//  ClipboardPlugin.m
//  Clipboard plugin for PhoneGap
//
//  Copyright 2010 Michel Weimerskirch.
//

#import <Cordova/CDVPlugin.h> 
#import "SimpleLogger.h"

@implementation SimpleLogger

- (void)write:(CDVInvokedUrlCommand*)command
{
    
    NSString* message = [command.arguments objectAtIndex:0];
    
        NSLog(@"%@", message);
    
}

@end
