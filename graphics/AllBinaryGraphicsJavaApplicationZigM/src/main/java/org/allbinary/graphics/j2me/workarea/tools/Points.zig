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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PointsInterface = @import("org/allbinary/graphics/j2me/workarea/tools/PointsInterface.zig").PointsInterface;

pub const Points = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.Points";
    pub const java_interfaces = .{ PointsInterface };
    pointVector: ?*BasicArrayList = null,
    // Implements PointsInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.pointVector = Inheritance.upcast(@TypeOf(this.pointVector), BasicArrayListD.create());
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self.pointVector.?.clear();
    }
    

    pub fn getPoints(self: *Self) ?*BasicArrayList {
        return self.pointVector;
    }
    

    pub fn addPoints(self: *Self, vector: ?*BasicArrayList) void {
        _ = Inheritance.call(self.pointVector.?, "addAll2", .{ vector });
    }
    

    pub fn isValid(self: *Self) bool {
        if (self.pointVector.?.size() > 1) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.pointVector.?.size();
    }
};

