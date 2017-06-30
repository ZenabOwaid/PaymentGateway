//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Zenab Owaid on 6/30/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void) processPaymentAmount: (NSInteger*) paymentAmount{
    
    if ( [self canProcessPayment]){
        NSLog(@"The fees have been payed with Paypal!");}
    
    else NSLog(@"Sorry can't pay with this card!");
}

-(BOOL) canProcessPayment{
    
    NSInteger can = arc4random_uniform(2);
    
    if ( can == 1 )
        return true;
    
    return false;
}

@end
