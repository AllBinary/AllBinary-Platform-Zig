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
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameAdState = @import("org/allbinary/game/GameAdState.zig").GameAdState;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const GameAdStateFactory = @import("org/allbinary/business/advertisement/GameAdStateFactory.zig").GameAdStateFactory;

pub const BottomLimiter = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.BottomLimiter";
    bottom: i32 = 0,
    deltaY: i32 = 0,
    lower: i32 = 0,
    higher: i32 = 0,
    var instance: ?*BottomLimiter = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BottomLimiter.create();
    }

    fn initFields(this: *Self) void {
        this.bottom = 0;
        this.deltaY = 0;
        this.lower = 0;
        this.higher = 0;
    }
    

    pub fn getInstance() ?*BottomLimiter {
        return Inheritance.upcast(?*BottomLimiter, BottomLimiter.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self, lower: i32, higher: i32) void {
        self.lower = lower;
        self.higher = higher;
    }
    

    pub fn update(self: *Self) void {
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, Inheritance.receiverOf(GameAdStateFactory.getInstance().?, "getCurrentInstance").getCurrentInstance());
        if (Inheritance.receiver(gameAdState.?, "isShowingAt").isShowingAt()) {
            self.deltaY = self.higher;
        } else {
            self.deltaY = self.lower;
        }
        self.bottom = displayInfo.?.getLastHeight() - self.deltaY;
    }
    

    pub fn getDeltaY(self: *Self) i32 {
        return self.deltaY;
    }
    

    pub fn getBottom(self: *Self) i32 {
        return self.bottom;
    }
};

