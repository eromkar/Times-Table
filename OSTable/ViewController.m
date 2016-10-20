//
//  ViewController.m
//  OSTable
//
//  Created by Student P_03 on 13/10/16.
//  Copyright © 2016 Omkar Salunkhe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myArray=[[NSMutableArray alloc]init];
    [myArray addObject:@""];
    self.TableView.delegate=self;
    self.TableView.dataSource=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return myArray.count ;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *Cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    NSString *myString;
    myString=[myArray objectAtIndex:indexPath.row];
    
    Cell.textLabel.text=myString;
    return Cell;
    
}



- (IBAction)ButtonCalculate:(id)sender {
    NSString *numberString=self.NumberField.text;
    NSString *limitString=self.LimitField.text;
    if(numberString.length> 0 && limitString.length){
        int number=numberString.intValue;
        int limit=limitString.intValue;
        
        myArray=[[NSMutableArray alloc]init];
        
        for(int index=1;index<=limit;index++){
            NSString *text=[NSString stringWithFormat:@"%d    *   %d  =   %d",number,index,number*index];
            [myArray addObject:text];
        }
        [self.TableView reloadData];
        [self.view endEditing:YES];
    }

}
@end
