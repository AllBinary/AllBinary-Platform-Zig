// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;

pub const GameTickDisplayInfoSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton";
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    lastWidth: i32 = 0,
    lastHeight: i32 = 0,
    lastHalfWidth: i32 = 0,
    lastHalfHeight: i32 = 0,
    var instance: ?*GameTickDisplayInfoSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameTickDisplayInfoSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.lastWidth = this.displayInfoSingleton.?.getLastWidth();
        this.lastHeight = this.displayInfoSingleton.?.getLastHeight();
        this.lastHalfWidth = this.displayInfoSingleton.?.getLastHalfWidth();
        this.lastHalfHeight = this.displayInfoSingleton.?.getLastHalfHeight();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameTickDisplayInfoSingleton {
        return Inheritance.upcast(?*GameTickDisplayInfoSingleton, GameTickDisplayInfoSingleton.instance);
    }
    

    pub fn update(self: *Self) void {
        self.lastWidth = self.displayInfoSingleton.?.getLastWidth();
        self.lastHeight = self.displayInfoSingleton.?.getLastHeight();
        self.lastHalfWidth = self.displayInfoSingleton.?.getLastHalfWidth();
        self.lastHalfHeight = self.displayInfoSingleton.?.getLastHalfHeight();
    }
    

    pub fn getLastWidth(self: *Self) i32 {
        return self.lastWidth;
    }
    

    pub fn getLastHeight(self: *Self) i32 {
        return self.lastHeight;
    }
    

    pub fn getLastHalfWidth(self: *Self) i32 {
        return self.lastHalfWidth;
    }
    

    pub fn getLastHalfHeight(self: *Self) i32 {
        return self.lastHalfHeight;
    }
};

