//
//  Pizarra.m
//  PizarraApl
//
//  Created by chipont on 12/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import "Pizarra.h"

#import "Figura.h"
@interface Pizarra()

@property(readwrite) NSMutableArray *figuras;

@end

@implementation Pizarra

@synthesize figuras = _figuras;

- (void)add: (id) figura
{
    if ([figura isMemberOfClass: [Figura class]]){
        NSLog(@"Añadiendo figura %@", [figura pintar]);
    //NSLog(@"%@", [figura performSelector:@selector (pintar)]);
     [_figuras addObject:figura];
    }
}


@end
