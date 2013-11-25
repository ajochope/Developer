//
//  WhasaDAO.m
//  WhasaPersistencia
//
//  Created by Ajo Chope on 24/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import "WhasaDAO.h"
#import "Amigo.h"

@interface WhasaDAO()
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;


@end

@implementation WhasaDAO

-(id) initConManagedObjectContext : (NSManagedObjectContext *) managedObjectContext
{
    self = [super init];
    
    
    
    
}

-(Conversacion *) crearConversacionConAmigo: (Amigo *) amigo yTitulo:(NSString *)titulo
{
    
    Conversacion *conversacion = nil;
    if(!(conversacion = [self buscarConversacionPorTitulo:titulo])){
    conversacion = [NSEntityDescription insertNewObjectForEntityForName:@"Conversacion" inManagedObjectContext:_managedObjectContext];
        [conversacion setTitulo : titulo ];
        //[amigo setFechaNacimiento:fNacim];
        NSError *error = nil;
        if([_managedObjectContext hasChanges] && ![_managedObjectContext save:&error]){
            NSLog(@"ERROR EN LA INSERCION");
        }
    }
    
    return conversacion;
    
    
    
    
}

-(Conversacion *) buscarConversacionPorTitulo:(NSString *)titulo
{
  
    
    Conversacion *conversacion = nil;
    // el objeto que hace la query
    NSFetchRequest *request = [NSFetchRequest  fetchRequestWithEntityName:@"Conversacion"];
    request.predicate =[NSPredicate predicateWithFormat:@"titulo = %@", titulo];
    // buscamos dimamicamente por key a amigo
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"titulo" ascending:YES]];
    
    NSError *error = nil;
    NSArray *amigosEncontrados = [_managedObjectContext executeFetchRequest: request error:&error];
    
    if(([amigosEncontrados count] >0) && (!error)){
        conversacion = [conversaciones objectAtIndex:0];
    }
    
    
    return conversacion;
    
    
}

- (Amigo *) crearAmigoConNombre : (NSString *)nombre yFechaNacimiento:(NSDate *)fNacim
{
  
    Amigo *amigo = nil;
    if(!(amigo = [self buscarAmigoPorNombre:nombre])){
        amigo = [NSEntityDescription insertNewObjectForEntityForName:@"Amigo" inManagedObjectContext:_managedObjectContext];
        [amigo setNombre : nombre ];
        [amigo setFechaNacimiento:fNacim];
        NSError *error = nil;
        if([_managedObjectContext hasChanges] && ![_managedObjectContext save:&error]){
            NSLog(@"ERROR EN LA INSERCION");
        }
    }
    
    return amigo;
    
}

-(Amigo *) buscarAmigoPorNombre:(NSString *)nombre
{
    // tenemos que hacer una query que se llamara fecht
    // uniones con respecto a los objetos
    // dos muy usuales: lazy
    Amigo *amigo = nil;
    // el objeto que hace la query
    NSFetchRequest *request = [NSFetchRequest  fetchRequestWithEntityName:@"Amigo"];
    request.predicate =[NSPredicate predicateWithFormat:@"nombre = %@", nombre];
    // buscamos dimamicamente por key a amigo 
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"nombre" ascending:YES]];
    
    NSError *error = nil;
    NSArray *amigosEncontrados = [_managedObjectContext executeFetchRequest: request error:&error];
    
    if(([amigosEncontrados count] >0) && (!error)){
        amigo = [amigosEncontrados objectAtIndex:0];
    }
    
    
    return amigo;
    
}

-(NSArray *) buscarTodosLosAmigos
{
    
}

-(NSArray *)buscarTodasLasConversaciones
{
    NSFetchRequest *request = [NSFetchRequest  fetchRequestWithEntityName:@"Conversacion"];
    NSError *error = nil;
    NSArray *conversacionesEncontradas = [_managedObjectContext executeFetchRequest: request error:&error];    return conversacionesEncontradas;
    
    
}

-(void) actualizarConversacion : (Conversacion *) conversacion conMensaje :(NSString *)textDeMensaje
{
    
    msg.texto = textoDeMensaje;
    msg.hora = [[NSData alloc]init];
    [conversacion addMensajeObject:msg];
    [_managedObjectContext save:nil];
    
    
}



@end
