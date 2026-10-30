//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
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
// package org.allbinary.layer.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;

pub const ScrollMapEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.event.ScrollMapEvent";
    base: AllBinaryEventObject = undefined,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        this.dx = 0;
        this.dy = 0;
    }
    

    pub fn create1(anyType: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setDx(self: *Self, dx: i32) void {
        self.dx = dx;
    }
    

    pub fn getDx(self: *Self) i32 {
        return self.dx;
    }
    

    pub fn setDy(self: *Self, dy: i32) void {
        self.dy = dy;
    }
    

    pub fn getDy(self: *Self) i32 {
        return self.dy;
    }
    

    pub fn setDxDy(self: *Self, dx: i32, dy: i32) void {
        self.dx = dx;
        self.dy = dy;
    }
};

