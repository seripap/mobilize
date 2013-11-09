//
//  ClipboardPlugin.m
//  Clipboard plugin for PhoneGap
//
//  Copyright 2010 Michel Weimerskirch.
//


#import "ClipboardPlugin.h"
#import <Cordova/CDVDebug.h>

@implementation ClipboardPlugin

-(void)setText:(CDVInvokedUrlCommand*)command {
    NSArray *arguments = command.arguments;
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
	NSString     *text       = [arguments objectAtIndex:0];
NSLog(@"123");
	[pasteboard setValue:text forPasteboardType:@"public.text"];
}

-(void)getText:(CDVInvokedUrlCommand*)command {
 
    NSString* callbackID = command.callbackId;
	UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];

	NSString *text = [pasteboard valueForPasteboardType:@"public.text"];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:text];
  
    [self writeJavascript: [pluginResult toSuccessCallbackString:callbackID]];
}

@end
