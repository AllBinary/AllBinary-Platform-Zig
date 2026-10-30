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
// package org.allbinary.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const VectorInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.vector.VectorInfo";
    width: i32 = 0,
    height: i32 = 0,
    points: [][]i32 = &.{},
    totalFrames: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create4(width: i32, height: i32, points: [][]i32, totalFrames: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.width = width;
        this.height = height;
        this.points = points;
        this.totalFrames = totalFrames;
        return this;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn setWidth(self: *Self, width: i32) void {
        self.width = width;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        self.height = height;
    }
    

    pub fn getPoints(self: *Self) [][]i32 {
        return self.points;
    }
    

    pub fn setPoints(self: *Self, points: [][]i32) void {
        self.points = points;
    }
    

    pub fn getTotalFrames(self: *Self) i32 {
        return self.totalFrames;
    }
    

    pub fn setTotalFrames(self: *Self, totalFrames: i32) void {
        self.totalFrames = totalFrames;
    }
};

