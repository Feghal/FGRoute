//
//  IpHelper.h
//  FGRoute
//
//  Created by Arthur Sahakyan on 6/7/17.
//  Copyright © 2017 Arthur Sahakyan. All rights reserved.
//

#ifndef IpHelper_h
#define IpHelper_h

#include <stdio.h>
#include <sys/_types/_in_addr_t.h>

int getdefaultgateway(in_addr_t * addr);

#endif /* IpHelper_h */
