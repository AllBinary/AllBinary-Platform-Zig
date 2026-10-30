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
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

//ArkTs does not have this.  So this is for the ArkTs build.
pub const EnumerationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.EnumerationUtil";
    var instance: ?*EnumerationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = EnumerationUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*EnumerationUtil {
        return Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.instance);
    }
    

    pub fn hasMoreElements(self: *Self, enumeration: ?*Enumeration) bool {
        _ = self;
        return enumeration.?.hasMoreElements();
    }
    

    pub fn nextElement(self: *Self, enumeration: ?*Enumeration) ?Object {
        _ = self;
        return Inheritance.upcast(?Object, enumeration.?.nextElement());
    }
    

    pub fn getAsArray(self: *Self, enumeration: ?*Enumeration) []?Object {
        const basicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        while (Inheritance.call(self, "hasMoreElements", .{ enumeration })) {
            _ = Inheritance.call(basicArrayList.?, "add", .{ Inheritance.call(self, "nextElement", .{ enumeration }) });
        }
        return basicArrayList.?.toArray();
    }
};

