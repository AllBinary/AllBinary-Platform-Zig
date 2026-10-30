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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ImageUnifierCell = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageUnifierCell";
    width: ?*Integer = null,
    height: ?*Integer = null,

    fn initFields(this: *Self) void {
        this.width = null;
        this.height = null;
    }
    

    pub fn create2(width: ?*Integer, height: ?*Integer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setWidth", .{ width });
        _ = Inheritance.call(this, "setHeight", .{ height });
        return this;
    }
    

    pub fn getWidth(self: *Self) ?*Integer {
        return self.width;
    }
    

    pub fn setWidth(self: *Self, width: ?*Integer) void {
        self.width = width;
    }
    

    pub fn getHeight(self: *Self) ?*Integer {
        return self.height;
    }
    

    pub fn setHeight(self: *Self, height: ?*Integer) void {
        self.height = height;
    }
};

