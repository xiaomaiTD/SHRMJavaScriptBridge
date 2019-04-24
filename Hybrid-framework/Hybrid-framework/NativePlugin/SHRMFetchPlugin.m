
//  SHRMFetchPlugin.m
//  Hybrid-framework
//
//  Created by 王凯 on 2018/12/7.
//  Copyright © 2018 王凯. All rights reserved.
//

#import "SHRMFetchPlugin.h"

@SHRMRegisterWebPlugin(SHRMFetchPlugin, 0)

@implementation SHRMFetchPlugin
- (void)nativeFentch:(SHRMMsgCommand *)command {
    NSString *method = [command argumentAtIndex:0];
    NSString *url = [command argumentAtIndex:1];
    NSString *param = [command argumentAtIndex:2];
    NSLog(@"(%@):%@,%@,%@",command.callbackId, method, url, param);
    SHRMPluginResult *result = [SHRMPluginResult resultWithStatus:SHRMCommandStatus_OK messageAsDictionary:@{@"success" : @"fetch success"}];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
