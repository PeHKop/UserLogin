//
//  ViewController.m
//  TwitterAPI2
//
//  Created by Наумов Кирилл on 18.10.15.
//  Copyright (c) 2015 Наумов Кирилл. All rights reserved.
//

#import "ViewController.h"
#import <Accounts/Accounts.h>
#import <Social/Social.h>

@interface ViewController ()

@property(strong,nonatomic) NSArray *array;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)twitterTimeline {
    ACAccountStore *account = [[ACAccountStore alloc]init];
    ACAccountType *accountType = [account accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    [account requestAccessToAccountsWithType: accountType options:nil completion:^(BOOL granted, NSError *error)if (granted == YES) {
        NSArray *arrayOfAccounts = [account accountsWithAccountType:accountType];
        if ([arrayOfAccounts count] > 0) {
            ACAccount *twitterAccount = [arrayOfAccounts lastObject];
            NSURL *requestAPI = [NSURL URLWithString:@"http://api.twitter.com/1.1/statuses/user_timeline.json"];
            NSMutableDictionary *parameters = [[NSMutableDictionary alloc] init];
            [parameters setObject:@"100" forkey:@"count"];
            [parameters setObject:@"1" forKey:@"include_entities"];
            
            SLRequest *posts = [ SLRequest requestforservicetype:SLServiceTypeTwitter requestmethod:SLRequestMethodGET url:requestAPI parameters:parameters];
                
            }
    }else {
        nslog(@"%@", [error localizedDescription]);
    }
    }
     ]
}

@end
