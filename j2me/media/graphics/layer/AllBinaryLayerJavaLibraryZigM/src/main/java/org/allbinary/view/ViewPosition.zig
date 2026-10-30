// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;

pub const ViewPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.ViewPosition";
    base: ViewPositionBase = undefined,
    allbinaryLayer: ?*AllBinaryLayer = null,

    fn initFields(this: *Self) void {
        this.allbinaryLayer = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
    }
    

    pub fn getInstanceD() ?*ViewPosition {
        return Inheritance.callStatic(ViewPosition, "create3", .{ 0, 0, 0 });
    }
    

    pub fn create3(x: i32, y: i32, z: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ViewPositionBase, "create3", .{ x, y, z }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return Inheritance.receiver(self.allbinaryLayer.?, "getXP").getXP();
    }
    

    pub fn getY(self: *Self) i32 {
        return Inheritance.receiver(self.allbinaryLayer.?, "getYP").getYP();
    }
    

    pub fn getZ(self: *Self) i32 {
        return Inheritance.receiver(self.allbinaryLayer.?, "getZP").getZP();
    }
    

    pub fn getX2(self: *Self) i32 {
        return self.getX() + Inheritance.receiver(self.allbinaryLayer.?, "getWidth").getWidth();
    }
    

    pub fn getY2(self: *Self) i32 {
        return self.getY() + Inheritance.receiver(self.allbinaryLayer.?, "getHeight").getHeight();
    }
    

    pub fn getZ2(self: *Self) i32 {
        return @as(i32, @intCast((self.getZ() + Inheritance.receiver(self.allbinaryLayer.?, "getDepth").getDepth())));
    }
    

    pub fn setAllbinaryLayer(self: *Self, allbinaryLayer: ?Object) void {
        self.allbinaryLayer = Inheritance.cast(?*AllBinaryLayer, allbinaryLayer);
    }
};

