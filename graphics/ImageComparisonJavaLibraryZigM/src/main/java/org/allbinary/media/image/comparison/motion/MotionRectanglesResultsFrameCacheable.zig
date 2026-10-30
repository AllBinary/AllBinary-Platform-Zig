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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;
const Long = @import("java/lang/Long.zig").Long;

pub const MotionRectanglesResultsFrameCacheable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable";
    motionRectangles: ?*MotionRectangles = null,
    frame: ?*Long = null,
    // Implements CacheableInterface

    fn initFields(this: *Self) void {
        this.motionRectangles = null;
        
    }
    

    pub fn create2(motionRectangles: ?*MotionRectangles, frame: ?*Long) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.frame = frame;
        _ = Inheritance.call(this, "setMotionRectangles", .{ motionRectangles });
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.frame);
    }
    

    pub fn getMotionRectangles(self: *Self) ?*MotionRectangles {
        return self.motionRectangles;
    }
    

    pub fn setMotionRectangles(self: *Self, motionRectangles: ?*MotionRectangles) void {
        self.motionRectangles = motionRectangles;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Frame: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getKey())) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

