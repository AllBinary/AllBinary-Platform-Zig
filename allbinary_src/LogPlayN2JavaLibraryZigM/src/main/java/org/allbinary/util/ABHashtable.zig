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
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const Hashtable = @import("java/util/Hashtable.zig").Hashtable;
// const Map = @import("java/util/Map.zig").Map;
// const Set = @import("java/util/Set.zig").Set;
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const ABHashtable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.ABHashtable";
    base: Hashtable = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Hashtable, "create", .{  }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn size(self: *Self) i32 {
        return self.base.size();
    }
    

    pub fn isEmpty(self: *Self) bool {
        return self.base.isEmpty();
    }
    

    pub fn elements(self: *Self) ?*Enumeration {
        return Inheritance.upcast(?*Enumeration, self.base.elements());
    }
    

    pub fn contains(self: *Self, value: ?Object) bool {
        return Inheritance.call(&self.base, "contains", .{ value });
    }
    

    pub fn containsValue(self: *Self, value: ?Object) bool {
        return Inheritance.call(&self.base, "containsValue", .{ value });
    }
    

    pub fn containsKey(self: *Self, key: ?Object) bool {
        return Inheritance.call(&self.base, "containsKey", .{ key });
    }
    

    pub fn get(self: *Self, key: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "get", .{ key }));
    }
    

    pub fn clear(self: *Self) void {
        _ = self.base.clear();
    }
    

    pub fn clone(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.clone());
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.toString());
    }
    

    pub fn equals(self: *Self, obj: ?Object) bool {
        return Inheritance.call(&self.base, "equals", .{ obj });
    }
    

    pub fn hashCode(self: *Self) i32 {
        return self.base.hashCode();
    }
};

