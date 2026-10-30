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
// package org.allbinary.input.motion.gesture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CompleteMotionGestureInputEvent = @import("org/allbinary/game/input/CompleteMotionGestureInputEvent.zig").CompleteMotionGestureInputEvent;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const MotionGestureToMotionGestureActionAssociation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation";
    list: ?*BasicArrayList = null,
    motionGestureAction: ?*CompleteMotionGestureInputEvent = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(list: ?*BasicArrayList, commandAction: ?*CompleteMotionGestureInputEvent) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.list = list;
        this.motionGestureAction = commandAction;
        return this;
    }
    

    pub fn getMotionGesture(self: *Self) ?*BasicArrayList {
        return self.list;
    }
    

    pub fn setMotionGestures(self: *Self, list: ?*BasicArrayList) void {
        self.list = list;
    }
    

    pub fn getCommandAction(self: *Self) ?*CompleteMotionGestureInputEvent {
        return self.motionGestureAction;
    }
    

    pub fn setMotionGestureAction(self: *Self, commandAction: ?*CompleteMotionGestureInputEvent) void {
        self.motionGestureAction = commandAction;
    }
    

    pub fn isMotionGestureArrayEquals(self: *Self, aList: ?*BasicArrayList) bool {
        const size: i32 = aList.?.size();
        if (self.list.?.size() != size) {
            return false;
        }
        {
            var i: i32 = size - 1;
            while (i >= 0) : (i -= 1) {
            if (!Object.same(aList.?.objectArray[@intCast(i)], self.list.?.objectArray[@intCast(i)])) {
                return false;
            }
            }
        }
        return true;
    }
};

