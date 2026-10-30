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
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameAdStateBase = @import("org/allbinary/business/advertisement/GameAdStateBase.zig").GameAdStateBase;
const AdConfiguration = @import("org/allbinary/business/advertisement/AdConfiguration.zig").AdConfiguration;
const VirtualKeyboardEvent = @import("org/allbinary/input/event/VirtualKeyboardEvent.zig").VirtualKeyboardEvent;
const VirtualKeyboardEventHandler = @import("org/allbinary/input/event/VirtualKeyboardEventHandler.zig").VirtualKeyboardEventHandler;
const VirtualKeyboardEventListenerInterface = @import("org/allbinary/input/event/VirtualKeyboardEventListenerInterface.zig").VirtualKeyboardEventListenerInterface;

pub const GameAdState = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.GameAdState";
    base: GameAdStateBase = undefined,
    // Implements VirtualKeyboardEventListenerInterface
    

    pub fn create1(adConfiguration: ?*AdConfiguration) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameAdStateBase, "create1", .{ adConfiguration }).*;
        _ = Inheritance.call(VirtualKeyboardEventHandler.getInstance().?, "addListenerInterface", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn onVirtualKeyboardEvent(self: *Self, virtualKeyboardEvent: ?*VirtualKeyboardEvent) void {
        _ = virtualKeyboardEvent;
        _ = self;
    }
};

