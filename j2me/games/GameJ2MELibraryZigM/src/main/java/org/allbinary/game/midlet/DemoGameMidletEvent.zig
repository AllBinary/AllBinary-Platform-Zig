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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const DemoGameMidletState = @import("org/allbinary/game/midlet/DemoGameMidletState.zig").DemoGameMidletState;

pub const DemoGameMidletEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.DemoGameMidletEvent";
    base: AllBinaryEventObject = undefined,
    demoGameMidletState: ?*DemoGameMidletState = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(anyType: ?Object, demoGameMidletState: ?*DemoGameMidletState) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        this.demoGameMidletState = demoGameMidletState;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, anyType: ?Object) void {
        _ = Inheritance.call(self, "setSource", .{ anyType });
    }
    

    pub fn setDemoGameMidletState(self: *Self, demoGameMidletState: ?*DemoGameMidletState) void {
        self.demoGameMidletState = demoGameMidletState;
    }
    

    pub fn getDemoGameMidletState(self: *Self) ?*DemoGameMidletState {
        return self.demoGameMidletState;
    }
};

