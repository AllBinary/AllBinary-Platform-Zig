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
const Stack = @import("java/util/Stack.zig").Stack;
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const ABStack = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.ABStack";
    base: Stack = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Stack.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn push(self: *Self, item: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(&self.base, "push", .{ item }));
    }
    

    pub fn pop(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.pop());
    }
    

    pub fn peek(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.base.peek());
    }
    

    pub fn empty(self: *Self) bool {
        return self.base.empty();
    }
    

    pub fn search(self: *Self, obj: ?Object) i32 {
        return Inheritance.call(&self.base, "search", .{ obj });
    }
    

    pub fn removeElement(self: *Self, obj: ?Object) bool {
        return Inheritance.call(&self.base, "removeElement", .{ obj });
    }
};

