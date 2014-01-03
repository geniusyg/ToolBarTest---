//
//  ViewController.m
//  ToolBarTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 300, 320, 60)];
	
	UIBarButtonItem *titleButton = [[UIBarButtonItem alloc] initWithTitle:@"Button" style:UIBarButtonSystemItemDone target:self action:@selector(handleButton:)];
	
	NSArray * segment = @[@"A",@"B",@"C"];
	UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:segment];
	seg.frame = CGRectMake(0, 0, 140, 44);
	UIBarButtonItem *segButton = [[UIBarButtonItem alloc] initWithCustomView:seg];
	
	UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
	
	UIBarButtonItem *refreshButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(handleRefresh:)];
	
	NSArray *items = [NSArray arrayWithObjects:titleButton, segButton, space, refreshButton, nil];
	
	[toolbar setItems:items];
	
	[self.view addSubview:toolbar];
}
- (IBAction)handleRight:(id)sender {
	NSLog(@"오른쪽 버튼");
}
- (IBAction)handleLeft:(id)sender {
	NSLog(@"왼쪽버튼");
}

- (void)handleRefresh:(id)sender{
	NSLog(@"Refresh!");
}

- (void)handleButton:(id)sender {
	NSLog(@"Button Clicked!");
}

- (void)handleAdd {
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
