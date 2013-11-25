//
//  Amigo.h
//  WhasaPersistencia
//
//  Created by Ajo Chope on 24/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Conversacion;

@interface Amigo : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSDate * fechaNacimiento;
@property (nonatomic, retain) Conversacion *conversacion;

@end
