//
//  StripePaymentService.m
//  Payments
//
//  Created by Zenab Owaid on 6/30/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void) processPaymentAmount: (NSInteger*) paymentAmount{
    
    NSLog(@"The fees have been payed with Stripe!");
}

-(BOOL) canProcessPayment{
    
    NSInteger can = arc4random_uniform(2);

    if ( can )
        return true;
    
    return false;
}


@end
