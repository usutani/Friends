//
//  main.m
//  Friends
//
//  Created by Yasuhiro Usutani on 5/21/11.
//  Copyright 2011 TGL Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
