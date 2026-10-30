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
const ColorRange = @import("org/allbinary/media/image/analysis/ColorRange.zig").ColorRange;
const ColorRangeInterface = @import("org/allbinary/media/image/analysis/ColorRangeInterface.zig").ColorRangeInterface;

pub const ImageColorRangeResults = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.analysis.ImageColorRangeResults";
    colorRangeInterface: ?*ColorRangeInterface = null,
    matchingPixelsChecked: i64 = 0,
    totalPixelsChecked: i64 = 0,

    fn initFields(this: *Self) void {
        this.colorRangeInterface = null;
        this.matchingPixelsChecked = 0;
        this.totalPixelsChecked = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setColorRangeInterface", .{ Inheritance.cast(?*ColorRangeInterface, ColorRange.create()) });
        return this;
    }
    

    pub fn getColorRangeInterface(self: *Self) ?*ColorRangeInterface {
        return self.colorRangeInterface;
    }
    

    pub fn setColorRangeInterface(self: *Self, colorRangeInterface: ?*ColorRangeInterface) void {
        self.colorRangeInterface = colorRangeInterface;
    }
    

    pub fn getMatchingPixelsChecked(self: *Self) i64 {
        return self.matchingPixelsChecked;
    }
    

    pub fn setMatchingPixelsChecked(self: *Self, matchingPixelsChecked: i64) void {
        self.matchingPixelsChecked = matchingPixelsChecked;
    }
    

    pub fn addMatchingPixelsChecked(self: *Self) void {
        self.matchingPixelsChecked += 1;
    }
    

    pub fn getTotalPixelsChecked(self: *Self) i64 {
        return self.totalPixelsChecked;
    }
    

    pub fn addTotalPixelsChecked(self: *Self) void {
        self.totalPixelsChecked += 1;
    }
    

    pub fn setTotalPixelsChecked(self: *Self, totalPixelsChecked: i64) void {
        self.totalPixelsChecked = totalPixelsChecked;
    }
    

    pub fn getPercent(self: *Self) f32 {
        return (@as(f32, @floatFromInt(self.getMatchingPixelsChecked())) / @as(f32, @floatFromInt(self.getTotalPixelsChecked())));
    }
};

