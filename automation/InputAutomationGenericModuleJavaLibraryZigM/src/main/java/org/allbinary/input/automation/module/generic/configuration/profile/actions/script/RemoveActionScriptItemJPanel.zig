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
const ProfileActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface.zig").ProfileActionScriptConditionInterface;
const GenericProfileAction = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction.zig").GenericProfileAction;
const GenericProfileActionJPanel = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel.zig").GenericProfileActionJPanel;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const RemoveActionScriptItemJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.script.RemoveActionScriptItemJPanel";
    base: Panel = undefined,
    logUtil: ?*LogUtil = null,
    genericProfileActionJPanel: ?*GenericProfileActionJPanel = null,
    profileActionScriptConditionInterface: ?*ProfileActionScriptConditionInterface = null,
    removeJButton: ?*JButton = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        this.removeJButton = null;
    }
    

    pub fn create2(genericProfileActionJPanel: ?*GenericProfileActionJPanel, profileActionScriptConditionInterface: ?*ProfileActionScriptConditionInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Panel.create().*;
        this.initFields();
        _ = this.initComponents();
        this.genericProfileActionJPanel = genericProfileActionJPanel;
        this.profileActionScriptConditionInterface = profileActionScriptConditionInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.removeJButton = JButton.create();
        _ = Inheritance.call(self, "setLayout", .{ GridLayout.create() });
        _ = Inheritance.call(self.removeJButton.?, "setText", .{ String.literal("Remove") });
        _ = Inheritance.call(self.removeJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "removeJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.removeJButton });
    }
    

    pub fn removeJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        const genericProfileAction: ?*GenericProfileAction = Inheritance.upcast(?*GenericProfileAction, Inheritance.receiver(self.genericProfileActionJPanel.?, "getGenericProfileAction").getGenericProfileAction());
        if (genericProfileAction == null) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("GenericProfileAction was null"), self, String.literal("removeJButtonActionPerformed") });
            return;
        }
        _ = Inheritance.call(genericProfileAction.?.getGenericProfileActionScript().?, "removeCondition", .{ self.profileActionScriptConditionInterface });
        _ = Inheritance.receiver(self.genericProfileActionJPanel.?, "updateProfileActionUI").updateProfileActionUI();
    }
};

