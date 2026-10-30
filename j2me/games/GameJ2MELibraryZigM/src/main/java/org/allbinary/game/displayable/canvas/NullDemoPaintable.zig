// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DemoPaintableInterface = @import("org/allbinary/game/displayable/canvas/DemoPaintableInterface.zig").DemoPaintableInterface;

pub const NullDemoPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.NullDemoPaintable";
    pub const java_interfaces = .{ DemoPaintableInterface };
    // Implements DemoPaintableInterface
    pub var NULL_DEMO_PAINTABLE: ?*NullDemoPaintable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_DEMO_PAINTABLE = NullDemoPaintable.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn showGamePaintable(self: *Self) void {
        _ = self;
    }
};

