//
//  ClipboardPlugin.h
//  Clipboard plugin for PhoneGap
//
//  Copyright 2010 Michel Weimerskirch.
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface ClipboardPlugin : CDVPlugin

-(void)setText:(CDVInvokedUrlCommand*)command;

-(void)getText:(CDVInvokedUrlCommand*)command;

@end
