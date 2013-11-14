//
//  ViewController.m
//  iMarket
//
//  Created by RAFAEL BARALDI on 08/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import "ViewController.h"
#import "Gogogo.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnConsultar_OnClick:(id)sender {
    
    [[self txtProduto1] resignFirstResponder];
    [[self txtProduto2] resignFirstResponder];
    [[self txtProduto3] resignFirstResponder];
    
    
    Gogogo* programa = [[Gogogo alloc]init:10 X:1 Y:2];
    
    NSMutableArray* listaDeCompras = [[NSMutableArray alloc]init];
    [listaDeCompras addObject:[[self txtProduto1] text]];
    [listaDeCompras addObject:[[self txtProduto2] text]];
    [listaDeCompras addObject:[[self txtProduto3] text]];
    
    [self lblResposta].numberOfLines = 1000;
    
    NSString* resposta = [[NSString alloc]init];
    resposta = [programa comparar:listaDeCompras];
    
    [[self lblResposta] setText:resposta];
    
    [[self scrvwResposta] setContentSize:CGSizeMake(300, 500)];
    
    NSLog(@"%@", resposta);
}
- (IBAction)txtProduto3_OnEndExit:(id)sender {
    
    [[self txtProduto1] resignFirstResponder];
    [[self txtProduto2] resignFirstResponder];
    [[self txtProduto3] resignFirstResponder];
    
}
@end
