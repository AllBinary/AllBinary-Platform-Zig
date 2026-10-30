// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.identification

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GroupCommonFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.identification.GroupCommonFactory";
    ID: ?*Integer = null,
    GROUP_NAME_LABEL: ?*String = null,
    ID_LABEL: ?*String = null,
    ADDING_LABEL: ?*String = null,
    TO_LABEL: ?*String = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.ID = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 10 }));
        this.GROUP_NAME_LABEL = String.literal("Group Name: ");
        this.ID_LABEL = String.literal(" Id: ");
        this.ADDING_LABEL = String.literal("Adding: ");
        this.TO_LABEL = String.literal(" to: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GroupCommonFactory {
        if (Object.same(GroupCommonFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GroupCommonFactory.instance = Inheritance.upcast(@TypeOf(GroupCommonFactory.instance), GroupCommonFactory.create());
        }
        return Inheritance.cast(?*GroupCommonFactory, GroupCommonFactory.instance);
    }
};

