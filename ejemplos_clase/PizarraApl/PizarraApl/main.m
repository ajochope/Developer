//
//  main.m
//  PizarraApl
//
//  Created by chipont on 12/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Figura.h"
#import "Linea.h"
#import "Circulo.h"
#import "Pixel.h"
#import "Pizarra.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Linea *figura = [[Linea alloc]init];
        Circulo *figura2 = [[Circulo alloc]init];
        
        PuntoXY *pto = [[PuntoXY alloc] init];
        Pixel *px = [[Pixel alloc] init];

        Pizarra *pizarra = [[Pizarra alloc]init];
        [pizarra add:figura];
        [pizarra add:pto];
        [pizarra add:px];
        [pizarra add:@"hola"];
        
        NSArray *figuras = @[figura, figura2, px, @"hola"];
        /*for (id f in figuras){
            NSLog(@"%@", [f pintar]);
        }*/
        
        //[figura mover: pto y:px];
        
        NSLog(@"%@",[figura pintar]);
        
    }
    return 0;
}

