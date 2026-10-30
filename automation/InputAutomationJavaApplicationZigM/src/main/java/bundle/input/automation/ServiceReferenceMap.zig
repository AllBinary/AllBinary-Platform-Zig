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
// package bundle.input.automation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Collection = @import("java/util/Collection.zig").Collection;
// const Map = @import("java/util/Map.zig").Map;
// const Set = @import("java/util/Set.zig").Set;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const ServiceReferenceMap = struct {
    const Self = @This();
    pub const java_name = "bundle.input.automation.ServiceReferenceMap";
    serviceReference: ?*ServiceReference = null,
    // Implements Map

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(serviceReference: ?*ServiceReference) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.serviceReference = serviceReference;
        return this;
    }
    

    pub fn size(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn isEmpty(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn containsKey(self: *Self, key: ?Object) bool {
        _ = key;
        _ = self;
        return false;
    }
    

    pub fn containsValue(self: *Self, value: ?Object) bool {
        _ = value;
        _ = self;
        return false;
    }
    

    pub fn get(self: *Self, key: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(self.serviceReference.?, "getProperty", .{ Inheritance.cast(?*String, key) }));
    }
    

    pub fn put(self: *Self, key: ?Object, value: ?Object) ?Object {
        _ = key;
        _ = value;
        _ = self;
        return null;
    }
    

    pub fn remove(self: *Self, key: ?Object) ?Object {
        _ = key;
        _ = self;
        return null;
    }
    

    pub fn putAll(self: *Self, m: ?*Map) void {
        _ = m;
        _ = self;
    }
    

    pub fn clear(self: *Self) void {
        _ = self;
    }
    

    pub fn keySet(self: *Self) ?*Set {
        const keyStringArray: []?*String = Inheritance.receiver(self.serviceReference.?, "getPropertyKeys").getPropertyKeys(); _ = keyStringArray;
        return null;
    }
    

    pub fn values(self: *Self) ?*Collection {
        _ = self;
        return null;
    }
    

    pub fn entrySet(self: *Self) ?*Set {
        _ = self;
        return null;
    }
    

    pub fn toString(map: ?*Map) ?*String {
        _ = map;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

