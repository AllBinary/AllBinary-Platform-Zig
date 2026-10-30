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
// const Rectangle = @import("java/awt/Rectangle.zig").Rectangle;
const Vector = @import("java/util/Vector.zig").Vector;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const MotionRectangle = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.MotionRectangle";
    rectangle: ?*Rectangle = null,
    pixelDeltaVector: ?*BasicArrayList = null,
    // Implements Cloneable

    fn initFields(this: *Self) void {
        this.rectangle = null;
        this.pixelDeltaVector = null;
    }
    

    pub fn create1(rectangle: ?*Rectangle) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setRectangle", .{ rectangle });
        _ = Inheritance.call(this, "setPixelDeltaVector", .{ BasicArrayListD.create() });
        return this;
    }
    

    pub fn getRectangle(self: *Self) ?*Rectangle {
        return self.rectangle;
    }
    

    pub fn setRectangle(self: *Self, rectangle: ?*Rectangle) void {
        self.rectangle = rectangle;
    }
    

    pub fn getPixelDeltaVector(self: *Self) ?*BasicArrayList {
        return self.pixelDeltaVector;
    }
    

    pub fn setPixelDeltaVector(self: *Self, pixelDeltaVector: ?*BasicArrayList) void {
        self.pixelDeltaVector = pixelDeltaVector;
    }
    

    pub fn clone(self: *Self) ?Object {
        const motionRectangle: ?*MotionRectangle = Inheritance.callStatic(MotionRectangle, "create1", .{ Inheritance.cast(?*Rectangle, Inheritance.receiverOf(self.getRectangle().?, "clone").clone()) });
        _ = Inheritance.call(motionRectangle.?, "setPixelDeltaVector", .{ Inheritance.cast(?*BasicArrayList, Inheritance.receiverOf(self.getPixelDeltaVector().?, "clone").clone()) });
        return Inheritance.upcast(?Object, motionRectangle);
    }
};

