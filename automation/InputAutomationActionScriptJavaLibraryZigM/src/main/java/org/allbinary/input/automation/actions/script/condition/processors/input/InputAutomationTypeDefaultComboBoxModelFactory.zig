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
// const Set = @import("java/util/Set.zig").Set;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;

pub const InputAutomationTypeDefaultComboBoxModelFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance() ?*DefaultComboBoxModel {
        const defaultComboBoxModel: ?*DefaultComboBoxModel = DefaultComboBoxModel.create();
        const set: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiverOf(Inheritance.receiverOf(InputRobotFactory.getInstance().?, "get").get().?, "keySet").keySet());
        const nameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(nameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(defaultComboBoxModel.?, "addElement", .{ Inheritance.cast(?*String, nameArray[@intCast(index)]) });
            }
        }
        return defaultComboBoxModel;
    }
};

