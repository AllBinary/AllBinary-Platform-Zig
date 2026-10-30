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
// package org.allbinary.input.motion.gesture.observer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const AllBinaryEventObjectFactoryInterface = @import("org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.zig").AllBinaryEventObjectFactoryInterface;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;

pub const MotionEventFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.MotionEventFactory";
    source: ?Object = null,
    id: i32 = 0,
    // Implements AllBinaryEventObjectFactoryInterface
    var index: i32 = 0;

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(source: ?Object, id: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.source = source;
        this.id = id;
        MotionEventFactory.index = Inheritance.upcast(@TypeOf(MotionEventFactory.index), Inheritance.receiverOf(TouchMotionGestureFactory.getInstance().?.LAST_MOTION.?, "getId").getId());
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*AllBinaryEventObject {
        const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
        const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(inputFactory.?, "getInstanceById", .{ value_N66167: { const value_N66167_value = MotionEventFactory.index; MotionEventFactory.index += 1; break :value_N66167 value_N66167_value; } }));
        if (Object.same(input, inputFactory.?.NO_INPUT)) {
            return Inheritance.upcast(?*AllBinaryEventObject, Inheritance.callStatic(MotionGestureEvent, "create3", .{ self.source, self.id, Inheritance.cast(?*MotionGestureInput, TouchMotionGestureFactory.getInstance().?.NO_MOTION) }));
        } else {
            return Inheritance.upcast(?*AllBinaryEventObject, Inheritance.callStatic(MotionGestureEvent, "create3", .{ self.source, self.id, Inheritance.cast(?*MotionGestureInput, input) }));
        }
    }
};

