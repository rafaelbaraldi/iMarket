//
//  Mercado.m
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import "Mercado.h"

@implementation Mercado

-(id)init:(NSString*)nome Estacionamento:(float)estacionamento X:(float)x Y:(float)y{
    self = [super init];
    
    [self setNome:nome];
    [self setEstacionamento:estacionamento];
    [self setX:x];
    [self setY:y];
    [self setListaDeProdutos:([[NSMutableArray alloc]init])];
    
    return self;
}

@end
