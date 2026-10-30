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
const MyCanvasEventSource = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource.zig").MyCanvasEventSource;

pub const MyCanvasEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent";
    base: EventObject = undefined,
    

    pub fn create1(source: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(EventObject, "create1", .{ source }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getSource(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.getSource());
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.toString());
    }
    

    pub fn getCommand(self: *Self) ?*String {
        const myEventSource: ?*MyCanvasEventSource = Inheritance.cast(?*MyCanvasEventSource, self.getSource());
        return Inheritance.upcast(?*String, myEventSource.?.getCommand());
    }
    

    pub fn getTreeNode(self: *Self) ?*MutableTreeNode {
        const myEventSource: ?*MyCanvasEventSource = Inheritance.cast(?*MyCanvasEventSource, self.getSource());
        return Inheritance.upcast(?*MutableTreeNode, myEventSource.?.getTreeNode());
    }
    

    pub fn getAngle(self: *Self) f64 {
        const myEventSource: ?*MyCanvasEventSource = Inheritance.cast(?*MyCanvasEventSource, self.getSource());
        return myEventSource.?.getAngle();
    }
};

