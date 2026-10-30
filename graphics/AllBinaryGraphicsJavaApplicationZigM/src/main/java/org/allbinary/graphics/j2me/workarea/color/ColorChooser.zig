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
// package org.allbinary.graphics.j2me.workarea.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ColorChooser = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.color.ColorChooser";
    base: JPanel = undefined,
    jColorChooser1: ?*JColorChooser = null,

    fn initFields(this: *Self) void {
        this.jColorChooser1 = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.jColorChooser1 = JColorChooser.create();
        _ = Inheritance.call(self, "setLayout", .{ BorderLayout.create() });
        _ = Inheritance.call(self, "add", .{ self.jColorChooser1, java.awt.?.BorderLayout.?.CENTER });
    }
};

