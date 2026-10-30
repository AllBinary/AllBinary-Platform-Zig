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
// package org.allbinary.graphics.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ScalableListener = @import("org/allbinary/graphics/displayable/ScalableListener.zig").ScalableListener;

pub const BaseScalable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.BaseScalable";
    pub const java_interfaces = .{ ScalableListener };
    // Implements ScalableListener

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getRatio(self: *Self, ratio: f32) f32 {
        _ = ratio;
        _ = self;
        return 1.0;
    }
    

    pub fn getLeft(self: *Self, xOffset: i32) i32 {
        _ = xOffset;
        _ = self;
        return -1;
    }
    

    pub fn getTop(self: *Self, yOffset: i32) i32 {
        _ = yOffset;
        _ = self;
        return -1;
    }
    

    pub fn scale(self: *Self, ratio: f32) void {
        _ = ratio;
        _ = self;
    }
};

