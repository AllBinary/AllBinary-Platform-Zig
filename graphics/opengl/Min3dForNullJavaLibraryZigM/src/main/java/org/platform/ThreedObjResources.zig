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
// package org.platform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const ThreedObjResources = struct {
    const Self = @This();
    pub const java_name = "org.platform.ThreedObjResources";
    hashtable: ?*ABHashtable = null,
    var instance: ?*ThreedObjResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ThreedObjResources.create();
    }

    fn initFields(this: *Self) void {
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ThreedObjResources {
        return Inheritance.upcast(?*ThreedObjResources, ThreedObjResources.instance);
    }
    

    pub fn get(self: *Self, resourceName: ?*String) ?*String {
        const resourceName2: ?*String = Inheritance.cast(?*String, Inheritance.call(self.hashtable.?, "get", .{ resourceName }));
        if (resourceName2 != null) {
            return resourceName2;
        }
        return resourceName;
    }
};

