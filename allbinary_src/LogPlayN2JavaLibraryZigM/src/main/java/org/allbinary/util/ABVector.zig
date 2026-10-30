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
const Vector = @import("java/util/Vector.zig").Vector;
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const ABVector = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.ABVector";
    base: Vector = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Vector.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn ensureCapacity(self: *Self, minCapacity: i32) void {
        _ = Inheritance.call(&self.base, "ensureCapacity", .{ minCapacity });
    }
    

    pub fn capacity(self: *Self) i32 {
        return self.base.capacity();
    }
    

    pub fn size(self: *Self) i32 {
        return self.base.size();
    }
    

    pub fn isEmpty(self: *Self) bool {
        return self.base.isEmpty();
    }
    

    pub fn contains(self: *Self, obj: ?Object) bool {
        return Inheritance.call(&self.base, "contains", .{ obj });
    }
    

    pub fn indexOf(self: *Self, obj: ?Object) i32 {
        return Inheritance.call(&self.base, "indexOf", .{ obj });
    }
    

    pub fn lastIndexOf(self: *Self, obj: ?Object) i32 {
        return Inheritance.call(&self.base, "lastIndexOf", .{ obj });
    }
    

    pub fn elementAt(self: *Self, index: i32) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "elementAt", .{ index }));
    }
    

    pub fn firstElement(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.firstElement());
    }
    

    pub fn lastElement(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.lastElement());
    }
    

    pub fn setElementAt(self: *Self, obj: ?Object, index: i32) void {
        _ = Inheritance.call(&self.base, "setElementAt", .{ obj, index });
    }
    

    pub fn removeElementAt(self: *Self, index: i32) void {
        _ = Inheritance.call(&self.base, "removeElementAt", .{ index });
    }
    

    pub fn addElement(self: *Self, obj: ?Object) void {
        _ = Inheritance.call(&self.base, "addElement", .{ obj });
    }
    

    pub fn insertElementAt(self: *Self, obj: ?Object, index: i32) void {
        _ = Inheritance.call(&self.base, "insertElementAt", .{ obj, index });
    }
    

    pub fn removeElement(self: *Self, obj: ?Object) bool {
        return Inheritance.call(&self.base, "removeElement", .{ obj });
    }
    

    pub fn removeAllElements(self: *Self) void {
        _ = self.base.removeAllElements();
    }
    

    pub fn clone(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.clone());
    }
    

    pub fn toArray(self: *Self) []?Object {
        return self.base.toArray();
    }
    

    pub fn set(self: *Self, index: i32, element: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "set", .{ index, element }));
    }
    

    pub fn add(self: *Self, element: ?Object) bool {
        return Inheritance.call(&self.base, "add", .{ element });
    }
    

    pub fn remove(self: *Self, obj: ?Object) bool {
        return Inheritance.call(&self.base, "remove", .{ obj });
    }
    

    pub fn add2(self: *Self, index: i32, element: ?Object) void {
        _ = Inheritance.call(&self.base, "add", .{ index, element });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn remove(self: *Self, index: i32) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "remove", .{ index }));
    }
    

    pub fn clear(self: *Self) void {
        _ = self.base.clear();
    }
    

    pub fn equals(self: *Self, obj: ?Object) bool {
        return Inheritance.call(&self.base, "equals", .{ obj });
    }
    

    pub fn hashCode(self: *Self) i32 {
        return self.base.hashCode();
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.toString());
    }
    

    pub fn removeRange(self: *Self, fromIndex: i32, toIndex: i32) void {
        _ = Inheritance.call(&self.base, "removeRange", .{ fromIndex, toIndex });
    }
};

