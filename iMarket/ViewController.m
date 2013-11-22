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
        [self setLista:[[NSMutableArray alloc]init]];
        UITabBarItem* item = [self tabBarItem];
        [item setTitle:@"Search"];
        [item setImage:[UIImage imageNamed:@"carrinho"]];
    }
    return self;
}

- (void)viewDidLoad
{
//    UIPickerView* novo = [[UIPickerView alloc]initWithFrame:[[self pickerProdutos] bounds]];
//    [novo addSubview:[self lblResposta]];
//    [[self pickerProdutos] removeFromSuperview];
//    [novo setDelegate:self];
//    [self.view addSubview:novo];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnConsultar_OnClick:(id)sender {
    
    [[self txtProduto] resignFirstResponder];
    
    
    Gogogo* programa = [[Gogogo alloc]init:10 X:1 Y:2];
    
    [self lblResposta].numberOfLines = 10000;
    
    NSString* resposta = [[NSString alloc]init];
    resposta = [programa comparar:[self lista]];
    
    [[self lblResposta] setText:resposta];
    
    [[self scrvwResposta] setContentSize:CGSizeMake(300, 400)];
    
    NSLog(@"%@", resposta);
}
- (IBAction)txtProduto3_OnEndExit:(id)sender {
    
    [[self txtProduto] resignFirstResponder];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (IBAction)btnAdd_OncClick:(id)sender {
    [[self lista]addObject:[[self txtProduto] text]];
    [[self pickerProdutos] reloadAllComponents];
    [[self txtProduto] setText:@""];
    [[self txtProduto] resignFirstResponder];
}

- (IBAction)btnremove_OnClick:(id)sender {
    if([[self pickerProdutos] selectedRowInComponent:0] != 0){
        [[self lista] removeObjectAtIndex:([[self pickerProdutos] selectedRowInComponent:0] - 1)];
        [[self pickerProdutos] reloadAllComponents];
    }
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[self lista]count] + 1;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(row != 0){
        return [[self lista]objectAtIndex:(row - 1)];
    }
    else{
        return @"Select the product for deletion";
    }
}

-(UIView*)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    UILabel* lbl = [[UILabel alloc]init];
    [lbl setFont:[UIFont fontWithName:@"Apple SD Gothic Neo" size:12]];
    [lbl setText:[self pickerView:pickerView titleForRow:row forComponent:component]];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    
    return lbl;
}

@end
