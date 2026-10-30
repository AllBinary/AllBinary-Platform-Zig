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
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Map = @import("java/util/Map.zig").Map;
// const Set = @import("java/util/Set.zig").Set;

//AndroidToJ2ME
pub const J2SEUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.J2SEUtil";
    var instance: ?*J2SEUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = J2SEUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*J2SEUtil {
        return Inheritance.upcast(?*J2SEUtil, J2SEUtil.instance);
    }
    

    pub fn getHashMapAsArray(self: *Self, hashMap: ?*HashMap) []?Object {
        _ = self;
        const objectArray: []?Object = Inheritance.receiverOf(hashMap.?.keySet().?, "toArray").toArray();
        return objectArray;
    }
    

    pub fn getMapAsArray(self: *Self, map: ?*Map) []?Object {
        _ = self;
        const objectArray: []?Object = Inheritance.receiverOf(map.?.keySet().?, "toArray").toArray();
        return objectArray;
    }
    

    pub fn getSetAsArray(self: *Self, set: ?*Set) []?Object {
        _ = self;
        const objectArray: []?Object = set.?.toArray();
        return objectArray;
    }
};

