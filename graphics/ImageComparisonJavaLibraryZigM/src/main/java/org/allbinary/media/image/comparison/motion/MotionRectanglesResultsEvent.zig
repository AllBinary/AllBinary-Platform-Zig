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
// package org.allbinary.media.image.comparison.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;
const Long = @import("java/lang/Long.zig").Long;

pub const MotionRectanglesResultsEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent";
    base: AllBinaryEventObject = undefined,
    frame: ?*Long = null,
    motionRectangles: ?*MotionRectangles = null,

    fn initFields(this: *Self) void {
        
        this.motionRectangles = null;
    }
    

    pub fn create3(anyType: ?Object, frame: ?*Long, motionRectangles: ?*MotionRectangles) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        this.frame = frame;
        _ = Inheritance.call(this, "setMotionRectangles", .{ motionRectangles });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getMotionRectangles(self: *Self) ?*MotionRectangles {
        return self.motionRectangles;
    }
    

    pub fn setMotionRectangles(self: *Self, motionRectangles: ?*MotionRectangles) void {
        self.motionRectangles = motionRectangles;
    }
    

    pub fn getFrame(self: *Self) ?*Long {
        return self.frame;
    }
};

