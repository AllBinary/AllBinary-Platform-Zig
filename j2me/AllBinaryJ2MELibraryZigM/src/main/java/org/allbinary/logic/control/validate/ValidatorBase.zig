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
// package org.allbinary.logic.control.validate

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const ValidatorBaseInterface = @import("org/allbinary/logic/control/validate/ValidatorBaseInterface.zig").ValidatorBaseInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const ValidatorBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.validate.ValidatorBase";
    pub const java_interfaces = .{ ValidatorBaseInterface };
    // Implements ValidatorBaseInterface
    var instance: ?*ValidatorBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ValidatorBase.create();
    }
    

    pub fn getInstance() ?*ValidatorBase {
        return Inheritance.upcast(?*ValidatorBase, ValidatorBase.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        return Inheritance.upcast(?*Boolean, BooleanFactory.getInstance().?.TRUE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn toHashtable(self: *Self) ?*ABHashtable {
        _ = self;
        return Inheritance.upcast(?*ABHashtable, StdUtil.getInstance().?.NULL_TABLE);
    }
    

    pub fn toList(self: *Self) ?*BasicArrayList {
        _ = self;
        return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }
};

