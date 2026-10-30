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
// package org.allbinary.graphics.j2me.workarea.canvas.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;

pub const MyCanvasEventSource = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource";
    command: ?*String = null,
    treeNode: ?*MutableTreeNode = null,
    angle: f64 = 0.0,

    fn initFields(this: *Self) void {
        
        
        this.angle = 0.0;
    }
    

    pub fn create2(command: ?*String, treeNode: ?*MutableTreeNode) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.command = command;
        this.treeNode = treeNode;
        return this;
    }
    

    pub fn create3(command: ?*String, angle: f64, treeNode: ?*MutableTreeNode) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.command = command;
        this.treeNode = treeNode;
        _ = Inheritance.call(this, "setAngle", .{ angle });
        return this;
    }
    

    pub fn getCommand(self: *Self) ?*String {
        return self.command;
    }
    

    pub fn getTreeNode(self: *Self) ?*MutableTreeNode {
        return self.treeNode;
    }
    

    pub fn getAngle(self: *Self) f64 {
        return self.angle;
    }
    

    pub fn setAngle(self: *Self, angle: f64) void {
        self.angle = angle;
    }
};

