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
// package org.allbinary.input.automation.actions.script.condition

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const Node = @import("org/w3c/dom/Node.zig").Node;
const AlwaysActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition.zig").AlwaysActionScriptCondition;
const AlwaysActionScriptConditionData = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionData.zig").AlwaysActionScriptConditionData;
const ColorAtActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition.zig").ColorAtActionScriptCondition;
const ColorAtActionScriptConditionData = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionData.zig").ColorAtActionScriptConditionData;
const ProfileActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface.zig").ProfileActionScriptConditionInterface;
const TimeIntervalActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition.zig").TimeIntervalActionScriptCondition;
const TimeIntervalActionScriptConditionData = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionData.zig").TimeIntervalActionScriptConditionData;

pub const ProfileActionScriptConditionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(node: ?*Node) ?*ProfileActionScriptConditionInterface {
        var profileActionScriptConditionInterface: ?*ProfileActionScriptConditionInterface = null;
        if (Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ ColorAtActionScriptConditionData.NAME, node.?.getChildNodes() }) != null) {
            profileActionScriptConditionInterface = Inheritance.upcast(@TypeOf(profileActionScriptConditionInterface), Inheritance.callStatic(ColorAtActionScriptCondition, "create1", .{ node }));
        } else if (Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ TimeIntervalActionScriptConditionData.NAME, node.?.getChildNodes() }) != null) {
            profileActionScriptConditionInterface = Inheritance.upcast(@TypeOf(profileActionScriptConditionInterface), Inheritance.callStatic(TimeIntervalActionScriptCondition, "create1", .{ node }));
        } else if (Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ AlwaysActionScriptConditionData.NAME, node.?.getChildNodes() }) != null) {
            profileActionScriptConditionInterface = Inheritance.upcast(@TypeOf(profileActionScriptConditionInterface), Inheritance.callStatic(AlwaysActionScriptCondition, "create1", .{ node }));
        }
        return profileActionScriptConditionInterface;
    }
};

