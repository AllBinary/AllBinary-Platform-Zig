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
// package org.allbinary.graphics.j2me.workarea.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const IntegerDimension = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension";
    width: i32 = 0,
    height: i32 = 0,

    fn initFields(this: *Self) void {
        this.width = 0;
        this.height = 0;
    }
    

    pub fn create2(width: i32, height: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setWidth", .{ width });
        _ = Inheritance.call(this, "setHeight", .{ height });
        return this;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn setWidth(self: *Self, width: i32) void {
        self.width = width;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        self.height = height;
    }
};

