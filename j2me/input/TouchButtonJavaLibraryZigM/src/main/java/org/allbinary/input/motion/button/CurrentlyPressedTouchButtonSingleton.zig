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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;

pub const CurrentlyPressedTouchButtonSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton";
    list: ?*BasicArrayList = null,
    var instance: ?*CurrentlyPressedTouchButtonSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CurrentlyPressedTouchButtonSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*CurrentlyPressedTouchButtonSingleton {
        return Inheritance.upcast(?*CurrentlyPressedTouchButtonSingleton, CurrentlyPressedTouchButtonSingleton.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn size(self: *Self) i32 {
        return self.list.?.size();
    }
    

    pub fn removeAt(self: *Self, index: i32) ?*TouchButtonInput {
        return Inheritance.cast(?*TouchButtonInput, Inheritance.call(self.list.?, "removeAt", .{ index }));
    }
    

    pub fn remove(self: *Self, touchButtonInput: ?*TouchButtonInput) bool {
        return Inheritance.call(self.list.?, "remove", .{ touchButtonInput });
    }
    

    pub fn get(self: *Self, index: i32) ?*TouchButtonInput {
        return Inheritance.cast(?*TouchButtonInput, self.list.?.objectArray[@intCast(index)]);
    }
    

    pub fn contains(self: *Self, touchButtonInput: ?*TouchButtonInput) bool {
        return Inheritance.call(self.list.?, "contains", .{ touchButtonInput });
    }
    

    pub fn add(self: *Self, touchButtonInput: ?*TouchButtonInput) void {
        _ = Inheritance.call(self.list.?, "add", .{ touchButtonInput });
    }
};

