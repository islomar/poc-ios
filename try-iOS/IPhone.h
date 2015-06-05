//NSCopying is a protocol. This way, we force the implementations to override it.
@interface IPhone : NSObject <NSCopying> {
  NSNumber *_batteryLife;
}

@property NSString *phoneName;
@property NSString *modelNumber;

- (IPhone *)initWithBatteryLife:(NSNumber *)batteryLife;
- (void) decreaseBatteryLife:(NSNumber *)arg;
- (NSString *) speak:(NSString *)greeting;
- (void) reportBatteryLife;
@end