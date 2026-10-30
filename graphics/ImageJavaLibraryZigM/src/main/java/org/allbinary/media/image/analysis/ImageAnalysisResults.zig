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
const ImageColorRangeResults = @import("org/allbinary/media/image/analysis/ImageColorRangeResults.zig").ImageColorRangeResults;
const ImageColorResults = @import("org/allbinary/media/image/analysis/ImageColorResults.zig").ImageColorResults;

pub const ImageAnalysisResults = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.analysis.ImageAnalysisResults";
    imageColorRangeResults: ?*ImageColorRangeResults = null,
    imageColorResults: ?*ImageColorResults = null,
    averageAmbientLevel: f32 = 0.0,

    fn initFields(this: *Self) void {
        
        
        this.averageAmbientLevel = 0.0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.imageColorRangeResults = ImageColorRangeResults.create();
        this.imageColorResults = ImageColorResults.create();
        return this;
    }
    

    pub fn getImageColorRangeResults(self: *Self) ?*ImageColorRangeResults {
        return self.imageColorRangeResults;
    }
    

    pub fn setImageColorRangeResults(self: *Self, imageColorRangeResults: ?*ImageColorRangeResults) void {
        self.imageColorRangeResults = imageColorRangeResults;
    }
    

    pub fn getAverageAmbientLevel(self: *Self) f32 {
        return self.averageAmbientLevel;
    }
    

    pub fn setAverageAmbientLevel(self: *Self, averageAmbientLevel: f32) void {
        self.averageAmbientLevel = averageAmbientLevel;
    }
    

    pub fn getImageColorResults(self: *Self) ?*ImageColorResults {
        return self.imageColorResults;
    }
    

    pub fn setImageColorResults(self: *Self, imageColorResults: ?*ImageColorResults) void {
        self.imageColorResults = imageColorResults;
    }
};

