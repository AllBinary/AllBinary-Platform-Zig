// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Map = @import("java/util/Map.zig").Map;
// const Set = @import("java/util/Set.zig").Set;
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const ABHashMap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.ABHashMap";
    base: HashMap = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HashMap.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn size(self: *Self) i32 {
        return self.base.size();
    }
    

    pub fn isEmpty(self: *Self) bool {
        return self.base.isEmpty();
    }
    

    pub fn get(self: *Self, key: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "get", .{ key }));
    }
    

    pub fn containsKey(self: *Self, key: ?Object) bool {
        return Inheritance.call(&self.base, "containsKey", .{ key });
    }
    

    pub fn put(self: *Self, key: ?Object, value: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "put", .{ key, value }));
    }
    

    pub fn putAll(self: *Self, map: ?*Map) void {
        _ = Inheritance.call(&self.base, "putAll", .{ map });
    }
    

    pub fn remove(self: *Self, key: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "remove", .{ key }));
    }
    

    pub fn clear(self: *Self) void {
        _ = self.base.clear();
    }
    

    pub fn containsValue(self: *Self, value: ?Object) bool {
        return Inheritance.call(&self.base, "containsValue", .{ value });
    }
    

    pub fn keySet(self: *Self) ?*Set {
        return Inheritance.upcast(?*Set, self.base.keySet());
    }
    

    pub fn entrySet(self: *Self) ?*Set {
        return Inheritance.upcast(?*Set, self.base.entrySet());
    }
    

    pub fn getOrDefault(self: *Self, key: ?Object, defaultValue: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "getOrDefault", .{ key, defaultValue }));
    }
    

    pub fn putIfAbsent(self: *Self, key: ?Object, value: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "putIfAbsent", .{ key, value }));
    }
    

    pub fn clone(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.clone());
    }
};

