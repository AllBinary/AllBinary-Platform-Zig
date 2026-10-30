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
// package org.allbinary.media.image.comparison

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;

pub const ImageComparisonResultsEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ImageComparisonResultsEvent";
    base: AllBinaryEventObject = undefined,
    imageComparisonResult: ?*ImageComparisonResult = null,

    fn initFields(this: *Self) void {
        this.imageComparisonResult = null;
    }
    

    pub fn create2(anyType: ?Object, imageComparisonInfo: ?*ImageComparisonResult) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        _ = Inheritance.call(this, "setImageComparisonResult", .{ imageComparisonInfo });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getImageComparisonResult(self: *Self) ?*ImageComparisonResult {
        return self.imageComparisonResult;
    }
    

    pub fn setImageComparisonResult(self: *Self, imageComparisonResult: ?*ImageComparisonResult) void {
        self.imageComparisonResult = imageComparisonResult;
    }
};

