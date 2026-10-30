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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;

pub const MotionRectangles = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.MotionRectangles";
    name: ?*String = null,
    rectangleVector: ?*BasicArrayList = null,
    imageComparisonResult: ?*ImageComparisonResult = null,
    MAX_PIXEL_DISTANCE_THRESHOLD: i32 = 0,

    fn initFields(this: *Self) void {
        
        this.rectangleVector = null;
        this.imageComparisonResult = null;
        this.MAX_PIXEL_DISTANCE_THRESHOLD = 2;
    }
    

    pub fn create2(name: ?*String, imageComparisonResult: ?*ImageComparisonResult) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        _ = Inheritance.call(this, "setImageComparisonResult", .{ imageComparisonResult });
        _ = Inheritance.call(this, "setVector", .{ BasicArrayListD.create() });
        return this;
    }
    

    pub fn getVector(self: *Self) ?*BasicArrayList {
        return self.rectangleVector;
    }
    

    pub fn setVector(self: *Self, rectangleVector: ?*BasicArrayList) void {
        self.rectangleVector = rectangleVector;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getImageComparisonResult(self: *Self) ?*ImageComparisonResult {
        return self.imageComparisonResult;
    }
    

    pub fn setImageComparisonResult(self: *Self, imageComparisonResult: ?*ImageComparisonResult) void {
        self.imageComparisonResult = imageComparisonResult;
    }
};

