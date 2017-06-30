//
//  ApplePaymentService.m
//  Payments
//
//  Created by Zenab Owaid on 6/30/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import "ApplePaymentService.h"


@implementation ApplePaymentService

-(void) processPaymentAmount: (NSInteger*) paymentAmount{
    
    NSLog(@"The fees have been payed with Apple!");
}

-(BOOL) canProcessPayment{
    
    NSInteger can = arc4random_uniform(2);
    
    if ( can )
        return true;
    
    return false;
}

@end
