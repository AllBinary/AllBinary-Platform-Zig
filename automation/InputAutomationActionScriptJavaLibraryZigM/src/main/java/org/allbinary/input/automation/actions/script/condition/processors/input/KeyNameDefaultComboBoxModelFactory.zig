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
// const KeyEvent = @import("java/awt/event/KeyEvent.zig").KeyEvent;
const KeySingletonFactory = @import("org/allbinary/input/KeySingletonFactory.zig").KeySingletonFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const KeyNameDefaultComboBoxModelFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*DefaultComboBoxModel {
        const defaultComboBoxModel: ?*DefaultComboBoxModel = DefaultComboBoxModel.create();
        const keyArray: []?*Integer = KeySingletonFactory.getArray();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(keyArray.len))) : (index += 1) {
            const keyAsString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(KeyEvent, "getKeyText", .{ keyArray[@intCast(index)] }));
            _ = Inheritance.call(defaultComboBoxModel.?, "addElement", .{ keyAsString });
            }
        }
        return defaultComboBoxModel;
    }
};

