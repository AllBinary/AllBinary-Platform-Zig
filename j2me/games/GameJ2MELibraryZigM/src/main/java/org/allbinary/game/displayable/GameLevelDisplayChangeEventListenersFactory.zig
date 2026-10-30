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
// package org.allbinary.game.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DisplayChangeEventHandler = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.zig").DisplayChangeEventHandler;
const DisplayChangeEventListener = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventListener.zig").DisplayChangeEventListener;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const GameLevelDisplayChangeEventListenersFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory";
    list: ?*BasicArrayList = null,
    var instance: ?*GameLevelDisplayChangeEventListenersFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameLevelDisplayChangeEventListenersFactory.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameLevelDisplayChangeEventListenersFactory {
        return Inheritance.upcast(?*GameLevelDisplayChangeEventListenersFactory, GameLevelDisplayChangeEventListenersFactory.instance);
    }
    

    pub fn add(self: *Self, displayChangeEventListener: ?*DisplayChangeEventListener) void {
        _ = Inheritance.call(self.list.?, "add", .{ displayChangeEventListener });
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "addListenerInterface", .{ displayChangeEventListener });
    }
    

    pub fn clear(self: *Self) void {
        const displayChangeEventHandler: ?*BasicEventHandler = Inheritance.upcast(?*BasicEventHandler, DisplayChangeEventHandler.getInstance());
        var displayChangeEventListener: ?*DisplayChangeEventListener = null;
        {
            var index: i32 = self.list.?.size();
            while (value_N66206: { index -= 1; break :value_N66206 index; } >= 0) {
            displayChangeEventListener = Inheritance.cast(?*DisplayChangeEventListener, self.list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(displayChangeEventHandler.?, "removeListener", .{ displayChangeEventListener });
            }
        }
        _ = self.list.?.clear();
    }
};

