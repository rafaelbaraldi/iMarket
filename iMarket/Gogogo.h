//
//  Gogogo.h
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gogogo : NSObject

@property NSMutableArray* listaDeMercados;
@property float x, y, consumo, preco;

-(id)init:(float)consumo X:(float)x Y:(float)y;

-(NSString*)comparar:(NSMutableArray*)listaDeCompras;

@end
