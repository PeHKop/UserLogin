//
//  ViewController.h
//  TwitterAPI2
//
//  Created by Наумов Кирилл on 18.10.15.
//  Copyright (c) 2015 Наумов Кирилл. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<
UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

