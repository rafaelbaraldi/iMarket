//
//  Mock.m
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import "Mock.h"
#import "Mercado.h"
#import "Produto.h"

@implementation Mock

+(NSMutableArray*)buscaMercados{
    Mercado* extra = [[Mercado alloc]init:@"Extra" Estacionamento:10 X:4.5 Y:8];
    [extra setListaDeProdutos:[Mock buscaProdutosExtra]];
    
    Mercado* PDA = [[Mercado alloc]init:@"Pao de Acucar" Estacionamento:14 X:1 Y:4];
    [PDA setListaDeProdutos:[Mock buscaProdutosPDA]];
    
    Mercado* carrefour = [[Mercado alloc]init:@"Carrefour" Estacionamento:8 X:4 Y:18];
    [carrefour setListaDeProdutos:[Mock buscaProdutosCarrefour]];
    
    
    NSMutableArray* retorno = [[NSMutableArray alloc]init];
    [retorno addObject:extra];
    [retorno addObject:PDA];
    [retorno addObject:carrefour];
    
    return retorno;
}

+(NSMutableArray*)buscaProdutosExtra{
    Produto* banana = [[Produto alloc]init:@"caixo de banana" Preco:3.5];
    Produto* ovo = [[Produto alloc]init:@"duzia de ovos" Preco:5];
    Produto* leite = [[Produto alloc]init:@"litro de leite" Preco:2];
    Produto* arroz = [[Produto alloc]init:@"kilo de arroz" Preco:4];
    Produto* macarrao = [[Produto alloc]init:@"pacote de macarrao" Preco:3.75];
    Produto* coca = [[Produto alloc]init:@"garrafa de coca-cola" Preco:3.5];
    
    NSMutableArray* lista = [[NSMutableArray alloc]init];
    
    [lista addObject:banana];
    [lista addObject:ovo];
    [lista addObject:leite];
    [lista addObject:arroz];
    [lista addObject:macarrao];
    [lista addObject:coca];
    
    return lista;
}

+(NSMutableArray*)buscaProdutosPDA{
    Produto* banana = [[Produto alloc]init:@"caixo de banana" Preco:4.5];
    Produto* ovo = [[Produto alloc]init:@"duzia de ovos" Preco:3.5];
    Produto* leite = [[Produto alloc]init:@"litro de leite" Preco:4];
    Produto* feijao = [[Produto alloc]init:@"kilo de feijao" Preco:6];
    Produto* macarrao = [[Produto alloc]init:@"pacote de macarrao" Preco:2.75];
    Produto* coca = [[Produto alloc]init:@"garrafa de coca-cola" Preco:5.5];
    
    NSMutableArray* lista = [[NSMutableArray alloc]init];
    
    [lista addObject:banana];
    [lista addObject:ovo];
    [lista addObject:leite];
    [lista addObject:feijao];
    [lista addObject:macarrao];
    [lista addObject:coca];
    
    return lista;
}

+(NSMutableArray*)buscaProdutosCarrefour{
    Produto* morango = [[Produto alloc]init:@"caixa de morango" Preco:2];
    Produto* ovo = [[Produto alloc]init:@"duzia de ovos" Preco:4.5];
    Produto* leite = [[Produto alloc]init:@"litro de leite" Preco:1.2];
    Produto* arroz = [[Produto alloc]init:@"kilo de arroz" Preco:8.4];
    Produto* macarrao = [[Produto alloc]init:@"pacote de macarrao" Preco:6];
    Produto* coca = [[Produto alloc]init:@"garrafa de coca-cola" Preco:2.3];
    
    NSMutableArray* lista = [[NSMutableArray alloc]init];
    
    [lista addObject:morango];
    [lista addObject:ovo];
    [lista addObject:leite];
    [lista addObject:arroz];
    [lista addObject:macarrao];
    [lista addObject:coca];
    
    return lista;
}

+(float)calculaDistancia:(float)xa XB:(float)xb YA:(float)ya YB:(float)yb{
    
    float d;
    
    d = sqrt(pow((xb - xa), 2) + pow((yb - ya), 2));
    
    return d;
}

@end
