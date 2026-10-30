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
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;

pub const CancelTouchButtonInputFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.CancelTouchButtonInputFactory";
    cancelInputArray: []?*TouchButtonInput = &.{},
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.cancelInputArray = array_N65879: { const array_N65879_array = allocator.alloc(?*TouchButtonInput, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N65879_array, null); break :array_N65879 array_N65879_array; };
    }
    

    pub fn getInstance() ?*CancelTouchButtonInputFactory {
        if (Object.same(CancelTouchButtonInputFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            CancelTouchButtonInputFactory.instance = Inheritance.upcast(@TypeOf(CancelTouchButtonInputFactory.instance), CancelTouchButtonInputFactory.create());
        }
        return Inheritance.cast(?*CancelTouchButtonInputFactory, CancelTouchButtonInputFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const basicTouchInputFactory: ?*BasicTouchInputFactory = Inheritance.upcast(?*BasicTouchInputFactory, BasicTouchInputFactory.getInstance());
        {
            var index: i32 = @as(i32, @intCast(this.cancelInputArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            this.cancelInputArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.cancelInputArray[@intCast(index)]), basicTouchInputFactory.?.NONE);
            }
        }
        this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.UP.?, "getId").getId())] = Inheritance.upcast(@TypeOf(this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.UP.?, "getId").getId())]), basicTouchInputFactory.?.DOWN);
        this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.DOWN.?, "getId").getId())] = Inheritance.upcast(@TypeOf(this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.DOWN.?, "getId").getId())]), basicTouchInputFactory.?.UP);
        this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.LEFT.?, "getId").getId())] = Inheritance.upcast(@TypeOf(this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.LEFT.?, "getId").getId())]), basicTouchInputFactory.?.RIGHT);
        this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.RIGHT.?, "getId").getId())] = Inheritance.upcast(@TypeOf(this.cancelInputArray[@intCast(Inheritance.receiverOf(basicTouchInputFactory.?.RIGHT.?, "getId").getId())]), basicTouchInputFactory.?.LEFT);
        return this;
    }
    

    pub fn getCancel(self: *Self, touchButtonInput: ?*TouchButtonInput) ?*TouchButtonInput {
        return Inheritance.upcast(?*TouchButtonInput, self.cancelInputArray[@intCast(Inheritance.receiver(touchButtonInput.?, "getId").getId())]);
    }
};

