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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const BasicColorArrayIndexer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.BasicColorArrayIndexer";
    basicColorArray: []?*BasicColor = &.{},
    circularIndexUtil: ?*CircularIndexUtil = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(basicColorArray: []?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basicColorArray = basicColorArray;
        this.circularIndexUtil = Inheritance.upcast(@TypeOf(this.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @as(i32, @intCast(this.basicColorArray.len)) }));
        return this;
    }
    

    pub fn next(self: *Self) void {
        _ = self.circularIndexUtil.?.next();
    }
    

    pub fn get(self: *Self) ?*BasicColor {
        return Inheritance.upcast(?*BasicColor, self.basicColorArray[@intCast(self.circularIndexUtil.?.getIndex())]);
    }
    

    pub fn getBasicColorArray(self: *Self) []?*BasicColor {
        return self.basicColorArray;
    }
};

