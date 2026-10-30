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
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;

pub const HashtableUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.HashtableUtil";
    enumerationUtil: ?*EnumerationUtil = null,
    var instance: ?*HashtableUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HashtableUtil.create();
    }

    fn initFields(this: *Self) void {
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*HashtableUtil {
        return Inheritance.upcast(?*HashtableUtil, HashtableUtil.instance);
    }
    

    pub fn putAll(self: *Self, fromHashtable: ?*ABHashtable, hashtable: ?*ABHashtable) void {
        const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(fromHashtable.?, "keys").keys());
        var keyCanBeNull: ?Object = null;
        var valueCanBeNull: ?Object = null;
        while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
            keyCanBeNull = Inheritance.upcast(@TypeOf(keyCanBeNull), Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }));
            valueCanBeNull = Inheritance.upcast(@TypeOf(valueCanBeNull), Inheritance.call(hashtable.?, "get", .{ keyCanBeNull }));
            if (valueCanBeNull == null) {
            } else {
                _ = Inheritance.call(hashtable.?, "put", .{ keyCanBeNull, valueCanBeNull });
            }
        }
    }
    

    pub fn getKeysAsArray(self: *Self, hashtable: ?*ABHashtable) []?Object {
        const objectArray: []?Object = array_N66221: { const array_N66221_array = allocator.alloc(?Object, @intCast(Inheritance.receiver(hashtable.?, "size").size())) catch unreachable; @memset(array_N66221_array, null); break :array_N66221 array_N66221_array; };
        var index: i32 = 0;
        const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(hashtable.?, "keys").keys());
        while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
            objectArray[@intCast(value_N66376: { const value_N66376_value = index; index += 1; break :value_N66376 value_N66376_value; })] = Inheritance.upcast(@TypeOf(objectArray[@intCast(value_N66376: { const value_N66376_value = index; index += 1; break :value_N66376 value_N66376_value; })]), Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }));
        }
        return objectArray;
    }
    

    pub fn getKeysAsList(self: *Self, hashtable: ?*ABHashtable) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ Inheritance.receiver(hashtable.?, "size").size() }));
        const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(hashtable.?, "keys").keys());
        while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
            _ = Inheritance.call(list.?, "add", .{ Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }) });
        }
        return list;
    }
};

