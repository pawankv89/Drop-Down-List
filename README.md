
PKDropDown
=========

## PKDropDown.
------------
 Added Some screens here.
 
[![](https://github.com/pawankv89/PKDropDown/blob/master/Screens/1.png)]
[![](https://github.com/pawankv89/PKDropDown/blob/master/Screens/2.png)]
[![](https://github.com/pawankv89/PKDropDown/blob/master/Screens/3.png)]

## Usage
------------
 iOS 9 Demo showing how to droodown on iPhone X Simulator in  Objective-C.


```objective-c

-(void)configurationByView{

NSArray *items = @[@{@"item":@"Apple",@"id":@"1"},@{@"item":@"Cherry",@"id":@"2"},@{@"item":@"Pineapple",@"id":@"3"},@{@"item":@"Mango",@"id":@"4"},@{@"item":@"Grapes",@"id":@"5"},@{@"item":@"Orange",@"id":@"6"}];
_dropdown.backgroundColor = [UIColor whiteColor];
_dropdown.items = items;
_dropdown.itemsFont = [UIFont fontWithName:@"Arial-Regular" size:12.0];
_dropdown.titleTextAlignment = NSTextAlignmentCenter;
_dropdown.delegate = self;
}

OR

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

```

```objective-c

```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
