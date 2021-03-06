// Tencent is pleased to support the open source community by making Mars available.
// Copyright (C) 2017 THL A29 Limited, a Tencent company. All rights reserved.

// Licensed under the MIT License (the "License"); you may not use this file except in 
// compliance with the License. You may obtain a copy of the License at
// http://opensource.org/licenses/MIT

// Unless required by applicable law or agreed to in writing, software distributed under the License is
// distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied. See the License for the specific language governing permissions and
// limitations under the License.

//
//  MessagesController.m
//  mactest
//
//  Created by chenzihao on 17/05/15.
//  Copyright © 2017年 chenzihao. All rights reserved.
//

#import "MessagesController.h"
#import "MessagesTableView.h"
#import "DemoEntryController.h"
@interface MessagesController() {
    DemoEntryController* _hostController;
}

@end
@implementation MessagesController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    MessagesTableView* view = (MessagesTableView*)[self findSubView:[self view] class:[MessagesTableView class]];
    view.messagesDelegate = self;
    
}

-(NSView*)findSubView:(NSView*)view class:(Class)class {
    for(NSView* subView in view.subviews) {
        if([subView isKindOfClass:class])
            return subView;
        NSView* findView = [self findSubView:subView class:class];
        if(findView != nil)
            return findView;
    }
    return nil;
}
-(void)setHostController:(NSViewController*)controller {
    _hostController = (DemoEntryController*)controller;
}

-(void)setConversation:(Conversation*)conversation {
    [_hostController setConversation:conversation];
}
@end
