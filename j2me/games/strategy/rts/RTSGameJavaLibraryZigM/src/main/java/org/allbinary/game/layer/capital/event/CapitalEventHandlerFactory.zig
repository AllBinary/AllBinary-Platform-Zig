// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.layer.capital.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const CapitalEventHandler = @import("org/allbinary/game/layer/capital/event/CapitalEventHandler.zig").CapitalEventHandler;

pub const CapitalEventHandlerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory";
    const capitalEventHandlerArray: []?*CapitalEventHandler = &.{};

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
        CapitalEventHandlerFactory.capitalEventHandlerArray = Inheritance.upcast(@TypeOf(CapitalEventHandlerFactory.capitalEventHandlerArray), array_N65698: { const array_N65698_array = allocator.alloc(?*CapitalEventHandler, @intCast(10)) catch unreachable; @memset(array_N65698_array, null); break :array_N65698 array_N65698_array; });
        {
            var index: i32 = @as(i32, @intCast(CapitalEventHandlerFactory.capitalEventHandlerArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            CapitalEventHandlerFactory.capitalEventHandlerArray[@intCast(index)] = Inheritance.upcast(@TypeOf(CapitalEventHandlerFactory.capitalEventHandlerArray[@intCast(index)]), CapitalEventHandler.create());
            }
        }
    }
    

    pub fn getInstance(groupInterface: ?*Group) ?*CapitalEventHandler {
        return Inheritance.upcast(?*CapitalEventHandler, CapitalEventHandlerFactory.capitalEventHandlerArray[@intCast(@as(i32, @intCast(groupInterface.?.getGroupId())))]);
    }
    

    pub fn removeAll() void {
        {
            var index: i32 = @as(i32, @intCast(CapitalEventHandlerFactory.capitalEventHandlerArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.receiverOf(CapitalEventHandlerFactory.capitalEventHandlerArray[@intCast(index)].?, "removeAllListeners").removeAllListeners();
            }
        }
    }
};

