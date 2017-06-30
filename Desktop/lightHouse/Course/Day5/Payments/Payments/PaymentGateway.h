//
//  PaymentGateway.h
//  Payments
//
//  Created by Zenab Owaid on 6/30/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>


-(void) processPaymentAmount: (NSInteger*) paymentAmount;
-(BOOL) canProcessPayment;

@end


@interface PaymentGateway : NSObject

//-(void) processPaymentAmount: (NSInteger*) paymentAmount;

@property  ( nonatomic, weak) id <PaymentDelegate> paymentDelegate;

@end
