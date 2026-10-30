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
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;

pub const RelativeRelationship = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.RelativeRelationship";
    typesAllowedList: ?*BasicArrayList = null,
    x: i32 = 0,
    y: i32 = 0,
    z: i32 = 0,
    pub var NULL_RELATIVE_RELATIONSHIP: ?*RelativeRelationship = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_RELATIVE_RELATIONSHIP = Inheritance.callStatic(RelativeRelationship, "create2", .{ PointFactory.getInstance().?.ZERO_ZERO, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance() });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create2(point: ?*GPoint, typesAllowedList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.x = point.?.getX();
        this.y = point.?.getY();
        this.z = point.?.getZ();
        this.typesAllowedList = typesAllowedList;
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return self.x;
    }
    

    pub fn getY(self: *Self) i32 {
        return self.y;
    }
    

    pub fn getZ(self: *Self) i32 {
        return self.z;
    }
    

    pub fn getTypesAllowedList(self: *Self) ?*BasicArrayList {
        return self.typesAllowedList;
    }
    

    pub fn setTypesAllowedList(self: *Self, typesAllowedList: ?*BasicArrayList) void {
        self.typesAllowedList = typesAllowedList;
    }
};

