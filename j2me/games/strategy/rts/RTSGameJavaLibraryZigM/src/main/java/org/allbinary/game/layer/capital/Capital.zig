// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot 
//   
// Generated Code Do Not Modify
// package org.allbinary.game.layer.capital

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const Capital = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.capital.Capital";
    value: i32 = 0,

    fn initFields(this: *Self) void {
        this.value = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getTotalMoney(self: *Self) i32 {
        return self.value;
    }
    

    pub fn removeMoney(self: *Self, points: i32) void {
        self.value -= points;
    }
    

    pub fn addMoney(self: *Self, points: i32) void {
        self.value += points;
    }
};

