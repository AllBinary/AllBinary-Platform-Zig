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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions.script

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Short = @import("java/lang/Short.zig").Short;

pub const ActionScriptItemJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.script.ActionScriptItemJPanel";
    base: JPanel = undefined,
    childActionScriptConditionJPanel: ?*JPanel = null,
    newActionScriptConditionJPanel: ?*JPanel = null,
    newActionScriptInputJPanel: ?*JPanel = null,
    removeJPanel: ?*JPanel = null,
    scriptItemJPanel: ?*JPanel = null,

    fn initFields(this: *Self) void {
        this.childActionScriptConditionJPanel = null;
        this.newActionScriptConditionJPanel = null;
        this.newActionScriptInputJPanel = null;
        this.removeJPanel = null;
        this.scriptItemJPanel = null;
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
    

    pub fn getNewActionScriptInputJPanel(self: *Self) ?*JPanel {
        return self.newActionScriptInputJPanel;
    }
    

    pub fn setNewActionScriptInputJPanel(self: *Self, newActionScriptInputJPanel: ?*JPanel) void {
        self.newActionScriptInputJPanel = newActionScriptInputJPanel;
    }
    

    pub fn getRemoveJPanel(self: *Self) ?*JPanel {
        return self.removeJPanel;
    }
    

    pub fn setRemoveJPanel(self: *Self, removeJPanel: ?*JPanel) void {
        self.removeJPanel = removeJPanel;
    }
    

    pub fn getScriptItemJPanel(self: *Self) ?*JPanel {
        return self.scriptItemJPanel;
    }
    

    pub fn setScriptItemJPanel(self: *Self, scriptItemJPanel: ?*JPanel) void {
        self.scriptItemJPanel = scriptItemJPanel;
    }
    

    pub fn getNewActionScriptConditionJPanel(self: *Self) ?*JPanel {
        return self.newActionScriptConditionJPanel;
    }
    

    pub fn setNewActionScriptConditionJPanel(self: *Self, newActionScriptConditionJPanel: ?*JPanel) void {
        self.newActionScriptConditionJPanel = newActionScriptConditionJPanel;
    }
    

    pub fn getChildActionScriptConditionJPanel(self: *Self) ?*JPanel {
        return self.childActionScriptConditionJPanel;
    }
    

    pub fn setChildActionScriptConditionJPanel(self: *Self, childActionScriptConditionJPanel: ?*JPanel) void {
        self.childActionScriptConditionJPanel = childActionScriptConditionJPanel;
    }
    

    pub fn initComponents(self: *Self) void {
        self.newActionScriptInputJPanel = JPanel.create();
        self.childActionScriptConditionJPanel = JPanel.create();
        self.newActionScriptConditionJPanel = JPanel.create();
        self.scriptItemJPanel = JPanel.create();
        self.removeJPanel = JPanel.create();
        _ = Inheritance.call(self.newActionScriptInputJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        const childActionScriptConditionJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.childActionScriptConditionJPanel });
        _ = Inheritance.call(self.childActionScriptConditionJPanel.?, "setLayout", .{ childActionScriptConditionJPanelLayout });
        _ = Inheritance.call(childActionScriptConditionJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(childActionScriptConditionJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 229, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(childActionScriptConditionJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(childActionScriptConditionJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 8, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(self.newActionScriptConditionJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(self.scriptItemJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
        _ = Inheritance.call(self.removeJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
        _ = Inheritance.call(self.removeJPanel.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 30, 20 }) });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.scriptItemJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 167, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.removeJPanel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 56, @as(i16, std.math.maxInt(i16)) }) }).?, "addComponent", .{ self.newActionScriptInputJPanel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 229, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.newActionScriptConditionJPanel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 229, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.childActionScriptConditionJPanel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.scriptItemJPanel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 31, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.removeJPanel, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 31, @as(i16, std.math.maxInt(i16)) }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.childActionScriptConditionJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.newActionScriptConditionJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 28, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.newActionScriptInputJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 30, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) });
    }
};

