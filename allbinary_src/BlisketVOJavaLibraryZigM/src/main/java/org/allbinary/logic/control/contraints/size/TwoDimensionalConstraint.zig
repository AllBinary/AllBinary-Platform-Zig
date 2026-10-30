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
// package org.allbinary.logic.control.contraints.size

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Node = @import("org/w3c/dom/Node.zig").Node;
const SizeConstraintInterface = @import("org/allbinary/logic/control/contraints/size/SizeConstraintInterface.zig").SizeConstraintInterface;
const TwoDimensionalConstraintInterface = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface.zig").TwoDimensionalConstraintInterface;

pub const TwoDimensionalConstraint = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint";
    pub const java_interfaces = .{ TwoDimensionalConstraintInterface };
    widthSizeConstraintInterface: ?*SizeConstraintInterface = null,
    heightSizeConstraintInterface: ?*SizeConstraintInterface = null,
    // Implements TwoDimensionalConstraintInterface

    fn initFields(this: *Self) void {
        this.widthSizeConstraintInterface = null;
        this.heightSizeConstraintInterface = null;
    }
    

    pub fn create1(node: ?*Node) *Self {
        _ = node;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getHeight(self: *Self) ?*SizeConstraintInterface {
        return self.heightSizeConstraintInterface;
    }
    

    pub fn getWidth(self: *Self) ?*SizeConstraintInterface {
        return self.widthSizeConstraintInterface;
    }
    

    pub fn setHeight(self: *Self, heightSizeConstraintInterface: ?*SizeConstraintInterface) void {
        self.heightSizeConstraintInterface = heightSizeConstraintInterface;
    }
    

    pub fn setWidth(self: *Self, widthSizeConstraintInterface: ?*SizeConstraintInterface) void {
        self.widthSizeConstraintInterface = widthSizeConstraintInterface;
    }
};

