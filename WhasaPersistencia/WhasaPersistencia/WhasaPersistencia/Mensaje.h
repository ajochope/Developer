//
//  Mensaje.h
//  WhasaPersistencia
//
//  Created by Ajo Chope on 24/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Conversacion;

@interface Mensaje : NSManagedObject

@property (nonatomic, retain) NSString * texto;
@property (nonatomic, retain) NSDate * hora;
@property (nonatomic, retain) Conversacion *conversacion;

@end
