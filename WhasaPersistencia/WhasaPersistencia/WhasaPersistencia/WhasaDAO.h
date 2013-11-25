//
//  WhasaDAO.h
//  WhasaPersistencia
//
//  Created by Ajo Chope on 24/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Conversacion.h"

@interface WhasaDAO : NSObject

-(id) initConManagedObjectContext : (NSManagedObjectContext *) managedObjectContext;

-(Conversacion *) crearConversacionConAmigo: (Amigo *) amigo yTitulo:(NSString *)titulo;

-(Conversacion *) buscarConversacionPorTitulo:(NSString *)titulo;

- (Amigo *) crearAmigoConNombre : (NSString *)nombre yFechaNacimiento:(NSDate *)fNacim;

-(Amigo *) buscarAmigoPorNombre:(NSString *)nombre;

-(NSArray *) buscarTodosLosAmigos;

-(NSArray *)buscarTodasLasConversaciones;

-(void) actualizarConversacion : (Conversacion *) conversacion conMensaje :(NSString *)textDeMensaje;


@end
