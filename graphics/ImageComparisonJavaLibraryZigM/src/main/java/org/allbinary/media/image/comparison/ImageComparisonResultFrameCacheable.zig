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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const Long = @import("java/lang/Long.zig").Long;

pub const ImageComparisonResultFrameCacheable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable";
    frame: ?*Long = null,
    imageComparisonResult: ?*ImageComparisonResult = null,
    // Implements CacheableInterface

    fn initFields(this: *Self) void {
        
        this.imageComparisonResult = null;
    }
    

    pub fn create2(imageComparisonResult: ?*ImageComparisonResult, frame: ?*Long) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setImageComparisonResult", .{ imageComparisonResult });
        this.frame = frame;
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.frame);
    }
    

    pub fn getFrame(self: *Self) ?*Long {
        return self.frame;
    }
    

    pub fn setFrame(self: *Self, frame: ?*Long) void {
        self.frame = frame;
    }
    

    pub fn getImageComparisonResult(self: *Self) ?*ImageComparisonResult {
        return self.imageComparisonResult;
    }
    

    pub fn setImageComparisonResult(self: *Self, imageComparisonResult: ?*ImageComparisonResult) void {
        self.imageComparisonResult = imageComparisonResult;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Frame: ") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ self.getFrame() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

