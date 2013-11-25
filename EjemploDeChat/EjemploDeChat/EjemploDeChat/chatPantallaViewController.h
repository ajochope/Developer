//
//  chatPantallaViewController.h
//  EjemploDeChat
//
//  Created by Ajo Chope on 18/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Chat.h"
@interface chatPantallaViewController : UIViewController
@property NSString *nickTitulo;
@property (strong, nonatomic) Chat *chat;
@end
