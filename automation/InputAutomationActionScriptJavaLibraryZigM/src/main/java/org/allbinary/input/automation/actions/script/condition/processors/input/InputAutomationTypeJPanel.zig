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
// package org.allbinary.input.automation.actions.script.condition.processors.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Short = @import("java/lang/Short.zig").Short;

pub const InputAutomationTypeJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel";
    base: JPanel = undefined,
    inputAutomationTypeJComboBox: ?*JComboBox = null,
    jLabel1: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.inputAutomationTypeJComboBox = null;
        this.jLabel1 = null;
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
    

    pub fn getInputAutomationTypeJComboBox(self: *Self) ?*JComboBox {
        return self.inputAutomationTypeJComboBox;
    }
    

    pub fn setInputAutomationTypeJComboBox(self: *Self, inputAutomationTypeJComboBox: ?*JComboBox) void {
        self.inputAutomationTypeJComboBox = inputAutomationTypeJComboBox;
    }
    

    pub fn initComponents(self: *Self) void {
        self.inputAutomationTypeJComboBox = JComboBox.create();
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.inputAutomationTypeJComboBox.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ @constCast(&[_]?*String{ String.literal("DirectX"), String.literal("DirectX 8"), String.literal("Low Level"), String.literal("Java Robot") })[0..] }) });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Input Type:") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.inputAutomationTypeJComboBox, 0, 98, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.inputAutomationTypeJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) });
    }
};

