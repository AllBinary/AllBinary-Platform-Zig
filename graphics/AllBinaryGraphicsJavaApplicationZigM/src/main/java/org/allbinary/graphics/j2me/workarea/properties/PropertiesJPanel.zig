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
// package org.allbinary.graphics.j2me.workarea.properties

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const PropertiesJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel";
    base: JPanel = undefined,
    rotateJButton: ?*JButton = null,
    copyVerticalJButton: ?*JButton = null,
    leftJButton: ?*JButton = null,
    rotateJPanel: ?*JPanel = null,
    angleJTextField: ?*JTextField = null,
    workAreaPropertiesJPanel: ?*JPanel = null,
    modifierJPanel: ?*JPanel = null,
    upJButton: ?*JButton = null,
    jPanel8: ?*JPanel = null,
    downJButton: ?*JButton = null,
    jPanel7: ?*JPanel = null,
    rightJButton: ?*JButton = null,
    copyHorizontalJButton: ?*JButton = null,

    fn initFields(this: *Self) void {
        this.rotateJButton = null;
        this.copyVerticalJButton = null;
        this.leftJButton = null;
        this.rotateJPanel = null;
        this.angleJTextField = null;
        this.workAreaPropertiesJPanel = null;
        this.modifierJPanel = null;
        this.upJButton = null;
        this.jPanel8 = null;
        this.downJButton = null;
        this.jPanel7 = null;
        this.rightJButton = null;
        this.copyHorizontalJButton = null;
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
    

    pub fn set(self: *Self, panel: ?*JPanel) void {
        _ = Inheritance.call(self.workAreaPropertiesJPanel.?, "add", .{ panel });
        _ = Inheritance.receiver(self, "repaint").repaint();
    }
    

    pub fn initComponents(self: *Self) void {
        self.workAreaPropertiesJPanel = JPanel.create();
        self.modifierJPanel = JPanel.create();
        self.copyVerticalJButton = JButton.create();
        self.copyHorizontalJButton = JButton.create();
        self.rotateJPanel = JPanel.create();
        self.rotateJButton = JButton.create();
        self.angleJTextField = JTextField.create();
        self.jPanel7 = JPanel.create();
        self.upJButton = JButton.create();
        self.downJButton = JButton.create();
        self.jPanel8 = JPanel.create();
        self.leftJButton = JButton.create();
        self.rightJButton = JButton.create();
        _ = Inheritance.call(self, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 2, 1 }) });
        _ = Inheritance.call(self.workAreaPropertiesJPanel.?, "setLayout", .{ GridLayout.create() });
        _ = Inheritance.call(self, "add", .{ self.workAreaPropertiesJPanel });
        _ = Inheritance.call(self.modifierJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 6, 0 }) });
        _ = Inheritance.call(self.copyVerticalJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.copyVerticalJButton.?, "setText", .{ String.literal("Copy Vertical") });
        _ = Inheritance.call(self.modifierJPanel.?, "add", .{ self.copyVerticalJButton });
        _ = Inheritance.call(self.copyHorizontalJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.copyHorizontalJButton.?, "setText", .{ String.literal("Copy Horizontal") });
        _ = Inheritance.call(self.modifierJPanel.?, "add", .{ self.copyHorizontalJButton });
        _ = Inheritance.call(self.rotateJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 2 }) });
        _ = Inheritance.call(self.rotateJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.rotateJButton.?, "setText", .{ String.literal("Rotate") });
        _ = Inheritance.call(self.rotateJPanel.?, "add", .{ self.rotateJButton });
        _ = Inheritance.call(self.angleJTextField.?, "setText", .{ String.literal("Angle") });
        _ = Inheritance.call(self.rotateJPanel.?, "add", .{ self.angleJTextField });
        _ = Inheritance.call(self.modifierJPanel.?, "add", .{ self.rotateJPanel });
        _ = Inheritance.call(self.jPanel7.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 2 }) });
        _ = Inheritance.call(self.upJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.upJButton.?, "setText", .{ String.literal("Up") });
        _ = Inheritance.call(self.jPanel7.?, "add", .{ self.upJButton });
        _ = Inheritance.call(self.downJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.downJButton.?, "setText", .{ String.literal("Down") });
        _ = Inheritance.call(self.jPanel7.?, "add", .{ self.downJButton });
        _ = Inheritance.call(self.modifierJPanel.?, "add", .{ self.jPanel7 });
        _ = Inheritance.call(self.jPanel8.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 2 }) });
        _ = Inheritance.call(self.leftJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.leftJButton.?, "setText", .{ String.literal("Left") });
        _ = Inheritance.call(self.jPanel8.?, "add", .{ self.leftJButton });
        _ = Inheritance.call(self.rightJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.rightJButton.?, "setText", .{ String.literal("Right") });
        _ = Inheritance.call(self.jPanel8.?, "add", .{ self.rightJButton });
        _ = Inheritance.call(self.modifierJPanel.?, "add", .{ self.jPanel8 });
        _ = Inheritance.call(self, "add", .{ self.modifierJPanel });
    }
};

