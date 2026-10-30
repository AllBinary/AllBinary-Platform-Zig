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
// package org.allbinary.media.image.analysis

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ColorAverage = @import("org/allbinary/media/image/analysis/ColorAverage.zig").ColorAverage;
const ColorRange = @import("org/allbinary/media/image/analysis/ColorRange.zig").ColorRange;

pub const ImageColorResults = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.analysis.ImageColorResults";
    colorRange: ?*ColorRange = null,
    colorAverage: ?*ColorAverage = null,

    fn initFields(this: *Self) void {
        this.colorRange = null;
        this.colorAverage = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setColorRange", .{ ColorRange.create() });
        _ = Inheritance.call(this.getColorRange().?, "setMaxRed", .{ -1 });
        _ = Inheritance.call(this.getColorRange().?, "setMaxGreen", .{ -1 });
        _ = Inheritance.call(this.getColorRange().?, "setMaxBlue", .{ -1 });
        _ = Inheritance.call(this.getColorRange().?, "setMinRed", .{ 256 });
        _ = Inheritance.call(this.getColorRange().?, "setMinGreen", .{ 256 });
        _ = Inheritance.call(this.getColorRange().?, "setMinBlue", .{ 256 });
        _ = Inheritance.call(this, "setColorAverage", .{ ColorAverage.create() });
        return this;
    }
    

    pub fn getColorRange(self: *Self) ?*ColorRange {
        return self.colorRange;
    }
    

    pub fn setColorRange(self: *Self, colorRange: ?*ColorRange) void {
        self.colorRange = colorRange;
    }
    

    pub fn getColorAverage(self: *Self) ?*ColorAverage {
        return self.colorAverage;
    }
    

    pub fn setColorAverage(self: *Self, colorAverage: ?*ColorAverage) void {
        self.colorAverage = colorAverage;
    }
};

