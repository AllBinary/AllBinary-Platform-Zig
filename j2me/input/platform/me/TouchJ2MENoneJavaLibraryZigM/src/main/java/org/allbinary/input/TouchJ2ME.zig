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
// package org.allbinary.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

//TouchJ2MENone
pub const TouchJ2ME = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.TouchJ2ME";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn pointerDragged(self: *Self, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn pointerPressed(self: *Self, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn pointerReleased(self: *Self, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = self;
    }
};

