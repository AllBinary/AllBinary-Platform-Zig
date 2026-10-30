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
// package org.allbinary.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const KeyValueFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.resources.KeyValueFactory";
    MAP: ?*ABHashtable = null,
    var instance: ?*KeyValueFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = KeyValueFactory.create();
    }

    fn initFields(this: *Self) void {
        this.MAP = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*KeyValueFactory {
        return Inheritance.upcast(?*KeyValueFactory, KeyValueFactory.instance);
    }
    

    pub fn get(self: *Self, key: ?*String) ?*String {
        const value: ?*String = Inheritance.cast(?*String, Inheritance.call(self.MAP.?, "get", .{ Inheritance.cast(?Object, key) }));
        if (value == null) {
            return key;
        }
        return value;
    }
};

