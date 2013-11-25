//
//  Conversacion.h
//  WhasaPersistencia
//
//  Created by Ajo Chope on 24/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Amigo, Mensaje;

@interface Conversacion : NSManagedObject

@property (nonatomic, retain) NSDate * fechaActualizacion;
@property (nonatomic, retain) NSString * titulo;
@property (nonatomic, retain) Amigo *amigo;
@property (nonatomic, retain) NSSet *mensaje;
@end

@interface Conversacion (CoreDataGeneratedAccessors)

- (void)addMensajeObject:(Mensaje *)value;
- (void)removeMensajeObject:(Mensaje *)value;
- (void)addMensaje:(NSSet *)values;
- (void)removeMensaje:(NSSet *)values;

@end
