//
//  ManagerHatingAnchovies.m
//  Lab10
//
//  Created by Dylan Park on 2021-07-14.
//

#import "ManagerHatingAnchovies.h"

@implementation ManagerHatingAnchovies

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    for (NSString *topping in toppings) {
        NSString *lowercaseTopping = [topping lowercaseString];
        if ([lowercaseTopping isEqualToString:@"anchovies"]) {
            return NO;
        }
    }
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end

