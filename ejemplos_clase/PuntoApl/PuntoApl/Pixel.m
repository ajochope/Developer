
#import "Pixel.h"

@implementation Pixel

- (NSString *) pintar
{
    return [NSString stringWithFormat:@"%@:%@",
            [super pintar], [self color]];
//    return [NSString stringWithFormat:@"%@:%@",
//            [super pintar], [self color]];
}

@end
