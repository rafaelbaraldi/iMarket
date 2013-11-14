//
//  Produto.m
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import "Produto.h"

@implementation Produto

-(id)init:(NSString*)nome Preco:(float)preco{
    self = [super init];
    
    [self setNome:nome];
    [self setPreco:preco];
    
    return self;
}

@end
