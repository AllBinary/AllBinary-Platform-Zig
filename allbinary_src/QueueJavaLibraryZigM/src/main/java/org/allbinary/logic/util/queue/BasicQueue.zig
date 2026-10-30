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
// package org.allbinary.logic.util.queue

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const BasicQueue = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.queue.BasicQueue";
    queueVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.queueVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn offer(self: *Self, anyType: ?Object) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.queueVector.?, "add", .{ anyType });
        return true;
    }
    

    pub fn remove(self: *Self, anyType: ?Object) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.queueVector.?, "remove", .{ anyType });
    }
    

    pub fn removeLast(self: *Self) ?Object {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.queueVector.?, "get", .{ self.queueVector.?.size() - 1 }));
        _ = Inheritance.call(self.queueVector.?, "remove", .{ anyType });
        return anyType;
    }
};

