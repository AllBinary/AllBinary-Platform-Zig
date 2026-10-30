// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.geological.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GeologicalResource = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.GeologicalResource";
    total: i32 = 0,
    initTotal: i32 = 0,

    fn initFields(this: *Self) void {
        this.total = 0;
        
    }
    

    pub fn create1(initTotal: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.initTotal = initTotal;
        _ = this.init();
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = Inheritance.call(self, "setTotal", .{ self.initTotal });
    }
    

    pub fn add(self: *Self, value: i32) void {
        const max: i32 = @as(i32, std.math.maxInt(i32));
        if (self.getTotal() + value > max) {
            _ = Inheritance.call(self, "setTotal", .{ max });
        } else {
            _ = Inheritance.call(self, "setTotal", .{ self.getTotal() + value });
        }
    }
    

    pub fn remove(self: *Self, value: i32) void {
        if (self.getTotal() - value < 0) {
            _ = Inheritance.call(self, "setTotal", .{ 0 });
        } else {
            _ = Inheritance.call(self, "setTotal", .{ self.getTotal() - value });
        }
    }
    

    pub fn getTotal(self: *Self) i32 {
        return self.total;
    }
    

    pub fn setTotal(self: *Self, total: i32) void {
        self.total = total;
    }
};

