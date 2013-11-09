//
//  ClipboardPlugin.h
//  Clipboard plugin for PhoneGap
//
//  Copyright 2010 Michel Weimerskirch.
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h> 

@interface SimpleLogger : CDVPlugin {}

- (void)write:(CDVInvokedUrlCommand*)command;


@end
