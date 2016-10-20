//
//  ViewController.h
//  OSTable
//
//  Created by Student P_03 on 13/10/16.
//  Copyright © 2016 Omkar Salunkhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *myArray;
    
    
}
- (IBAction)ButtonCalculate:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *TableView;
@property (strong, nonatomic) IBOutlet UITextField *NumberField;
@property (strong, nonatomic) IBOutlet UITextField *LimitField;

@end

