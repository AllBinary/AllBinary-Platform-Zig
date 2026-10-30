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
// package org.allbinary.game.tick

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;

pub const NullTickable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.tick.NullTickable";
    pub const java_interfaces = .{ TickableInterface };
    NAME: ?*String = null,
    // Implements TickableInterface
    var SINGLETON: ?*NullTickable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NullTickable.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("NulLTickable");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*NullTickable {
        return Inheritance.upcast(?*NullTickable, NullTickable.SINGLETON);
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.NAME;
    }
};

