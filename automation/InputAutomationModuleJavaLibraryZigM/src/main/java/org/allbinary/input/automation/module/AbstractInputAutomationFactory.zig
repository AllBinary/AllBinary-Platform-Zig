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
// package org.allbinary.input.automation.module

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const URL = @import("java/net/URL.zig").URL;
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;
const JavaHelpUtil = @import("org/allbinary/logic/java/help/JavaHelpUtil.zig").JavaHelpUtil;
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;

pub const AbstractInputAutomationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.AbstractInputAutomationFactory";
    base: InputAutomationModuleFactoryInterface = undefined,
    name: ?*String = null,
    jPanel: ?*JPanel = null,
    helpSet: ?*HelpSet = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(name: ?*String, jPanel: ?*JPanel, helpSet: ?*HelpSet) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputAutomationModuleFactoryInterface.create().*;
        this.initFields();
        this.name = name;
        this.jPanel = jPanel;
        this.helpSet = helpSet;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(name: ?*String, jPanel: ?*JPanel) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputAutomationModuleFactoryInterface.create().*;
        this.initFields();
        this.name = name;
        this.jPanel = jPanel;
        const url: ?*URL = Inheritance.upcast(?*URL, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(this).?.class))).?, "getResource", .{ String.literal("/help/Help.hs") }));
        this.helpSet = Inheritance.upcast(@TypeOf(this.helpSet), Inheritance.call(JavaHelpUtil.getInstance().?, "getHelpSet", .{ url }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getConfigurationJPanel(self: *Self) ?*JPanel {
        return self.jPanel;
    }
    

    pub fn getHelpSet(self: *Self) ?*HelpSet {
        return self.helpSet;
    }
};

