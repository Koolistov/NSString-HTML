//
//  NZViewController.m
//  NSString-HTML
//
//  Created by Bruno Tortato Furtado on 24/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"
#import "NSString+HTML.h"

@interface NZViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lbEncoded;
@property (strong, nonatomic) IBOutlet UILabel *lbDecoded;

@end



@implementation NZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *encoded = NSLocalizedString(@"encodedText", nil);
    self.lbEncoded.text = encoded;
    
    NSString *decoded = [encoded decodeHTMLCharacterEntities];
    self.lbDecoded.text = decoded;
}

@end
