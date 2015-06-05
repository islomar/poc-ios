#import "ChargableIPhone.h"

@implementation ChargableIPhone
- (void) increaseBatteryLife:(NSNumber *)num;
{
    _batteryLife = @([_batteryLife intValue] + [num intValue]);
}
@end