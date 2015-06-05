#import "IPhone.h"

@implementation IPhone

- (IPhone *)init;
{
  self = [super init];
  _batteryLife = @100;
  return self;
}

- (IPhone *)initWithBatteryLife:(NSNumber *)batteryLife;
{
   _batteryLife = batteryLife;
   return [super init];
}

// When declaring an object with a type of id, you have to leave off the *. 
// id is already defined as a pointer to an object, that's why it does not need the asterisk.
// Variables that are used for basic c types like int and char don’t need the * 
// because they hold the values directly, instead of a pointer to those objects
// But in that case, you can not use the dot notation. Use the setters.
- (IPhone *) copyWithZone:(NSZone *)zone;
{
   id copy = [[[self class] allocWithZone:zone] initWithBatteryLife:_batteryLife];
   [copy setPhoneName:[NSString stringWithFormat:@"Copy of %@", self.phoneName]];
   return copy;
}

- (void) decreaseBatteryLife:(NSNumber *)arg;
{
  _batteryLife = @([_batteryLife intValue] - [arg intValue]);
}

- (void) reportBatteryLife;
{
  if(self.phoneName){
    NSLog(@"%@'s battery life is %@", self.phoneName, _batteryLife);  
  }else{
    NSLog(@"%@'s battery life is %@", self, _batteryLife);
  }
    
}

- (NSString *)speak:(NSString *)greeting;
{
    NSString *message = [NSString stringWithFormat:@"%@ says %@", self.phoneName, greeting];
    return message;
}
@end