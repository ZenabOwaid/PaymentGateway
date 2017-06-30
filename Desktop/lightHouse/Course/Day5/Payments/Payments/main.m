//
//  main.m
//  Payments
//
//  Created by Zenab Owaid on 6/30/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSInteger dollarValue;
        char paymentMethod[225];
        
        dollarValue = arc4random_uniform (1000) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $ %ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", dollarValue);
        
        fgets(paymentMethod, 225, stdin);
        
        NSString *input = [[NSString alloc] initWithUTF8String:paymentMethod];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        //NSInteger x = [input intValue];
        NSInteger choise = 9;
        
        if ([input  isEqualToString:@"Paypal"]){
            choise = 1;
        }
        
        else if ([input  isEqualToString:@"Stipe"]){
            choise = 2;
        }
        
        else if ([input  isEqualToString:@"Amazon"]){
            choise = 3;
        }
        
        NSLog(@"Your payment method is : %@", input);
        NSLog(@"Your payment method is : %ld", choise);
        
        PaymentGateway *pg = [[PaymentGateway alloc]init];
        
       // [pg processPaymentAmount:&dollarValue];
        
        

        
        
        switch (choise){
            case 1 :
            {
                PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
                pg.paymentDelegate = paypal;
                [ paypal processPaymentAmount:&dollarValue];
            }
                break;
                
            case 2 :
            {
                StripePaymentService *stripe = [[StripePaymentService alloc]init];
            }
                break;
                
            case 3 :
            {
                AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
            }
                
        }
        
    }
    return 0;
}
