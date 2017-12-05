//
//  ViewController.m
//  PKDropDown
//
//  Created by Pawan kumar on 12/3/17.
//  Copyright © 2017 Pawan Kumar. All rights reserved.
//

#import "ViewController.h"
#import "PKDropDown.h"

@interface ViewController ()<PKDropDownDelegate>

@property (nonatomic, weak) IBOutlet PKDropDown *dropdown;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configurationByView];
    
    [self configurationDropDownMenu];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)configurationByView{
    
    NSArray *items = @[@{@"item":@"Apple",@"id":@"1"},@{@"item":@"Cherry",@"id":@"2"},@{@"item":@"Pineapple",@"id":@"3"},@{@"item":@"Mango",@"id":@"4"},@{@"item":@"Grapes",@"id":@"5"},@{@"item":@"Orange",@"id":@"6"}];
    _dropdown.backgroundColor = [UIColor whiteColor];
    _dropdown.items = items;
    _dropdown.itemsFont = [UIFont fontWithName:@"Arial-Regular" size:12.0];
    _dropdown.titleTextAlignment = NSTextAlignmentCenter;
    _dropdown.delegate = self;
}

-(void)configurationDropDownMenu{
    
     NSArray *items = @[@{@"item":@"Apple",@"id":@"1"},@{@"item":@"Cherry",@"id":@"2"},@{@"item":@"Pineapple",@"id":@"3"},@{@"item":@"Mango",@"id":@"4"},@{@"item":@"Grapes",@"id":@"5"},@{@"item":@"Orange",@"id":@"6"}];
    
    /* Adding Menu Programatically*/
    PKDropDown *dropNew = [[PKDropDown alloc] initWithFrame:CGRectMake(20,250,[[UIScreen mainScreen] bounds].size.width-40, 50)];
    dropNew.delegate = self;
    dropNew.items = items;
    dropNew.title = @"Select";
    dropNew.itemsFont = [UIFont fontWithName:@"Arial-Regular" size:12.0];
    dropNew.titleTextAlignment = NSTextAlignmentCenter;
    dropNew.directionDropDown = YES;
    [self.view addSubview:dropNew];
}

-(void)didSelectItem:(PKDropDown *)dropMenu index:(long)index{
    
}
-(void)show:(PKDropDown *)dropMenu{
    
}
-(void)hide:(PKDropDown *)dropMenu{
    
}

@end
