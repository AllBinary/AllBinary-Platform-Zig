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
// package org.allbinary.input.automation.module.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Short = @import("java/lang/Short.zig").Short;

pub const BlankModuleConfigurationJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel";
    base: JPanel = undefined,
    jLabel1: ?*JLabel = null,

    fn initFields(this: *Self) void {
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
    

    pub fn initComponents(self: *Self) void {
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("No Configuration Available") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addContainerGap", .{ 231, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jLabel1 }).?, "addGap", .{ 225, 225, 225 }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.jLabel1 }).?, "addContainerGap", .{ 362, @as(i16, std.math.maxInt(i16)) }) }) });
    }
};

