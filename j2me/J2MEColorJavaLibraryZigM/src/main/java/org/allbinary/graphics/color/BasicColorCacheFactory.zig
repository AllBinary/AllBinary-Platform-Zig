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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicColorCacheFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.BasicColorCacheFactory";
    hashtable: ?*ABHashtable = null,
    var instance: ?*BasicColorCacheFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicColorCacheFactory.create();
    }

    fn initFields(this: *Self) void {
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }
    

    pub fn getInstance() ?*BasicColorCacheFactory {
        return Inheritance.upcast(?*BasicColorCacheFactory, BasicColorCacheFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn add(self: *Self, basicDefaultColor: ?*BasicColor) void {
        _ = Inheritance.call(self.hashtable.?, "put", .{ Inheritance.callStatic(Integer, "create1", .{ basicDefaultColor.?.intValue() }), basicDefaultColor });
    }
    

    pub fn getAndOrCreate(self: *Self, integer: ?*Integer) ?*BasicColor {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var basicColor: ?*BasicColor = Inheritance.cast(?*BasicColor, Inheritance.call(self.hashtable.?, "get", .{ integer }));
        if (basicColor == null) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), Inheritance.call(BasicColorFactory.getInstance().?, "createInstance", .{ integer.?.intValue() }));
            _ = Inheritance.call(self.hashtable.?, "put", .{ integer, basicColor });
        }
        return basicColor;
    }
};

