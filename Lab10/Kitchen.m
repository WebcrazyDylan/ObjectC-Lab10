//
//  Kitchen.m
//  Lab10
//
//  Created by Dylan Park on 2021-07-14.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    BOOL canCreate = [_delegate kitchen:self.delegate shouldMakePizzaOfSize:size andToppings:toppings];
    BOOL shouldUpgrade;
    Pizza *newPizza;
    if (canCreate) {
        shouldUpgrade = [_delegate kitchenShouldUpgradeOrder:self.delegate];
        if (shouldUpgrade) {
            [_delegate kitchen:self.delegate shouldMakePizzaOfSize:large andToppings:toppings];
            newPizza = [[Pizza alloc] initWithSize:large toppings:toppings];
        } else {
            newPizza = [[Pizza alloc] initWithSize:size toppings:toppings];
        }
        
        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [_delegate kitchenDidMakePizza:newPizza];
        }
        
    }
    return newPizza;
}

@end
