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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;

pub const TouchButtonFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonFactory";
    LIST: ?*BasicArrayList = null,
    list: ?*BasicArrayList = null,
    savedList: ?*BasicArrayList = null,
    saved: bool = false,
    var SINGLETON: ?*TouchButtonFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = TouchButtonFactory.create();
    }

    fn initFields(this: *Self) void {
        this.LIST = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        this.list = this.LIST;
        this.savedList = this.LIST;
        this.saved = false;
    }
    

    pub fn getInstance() ?*TouchButtonFactory {
        return Inheritance.upcast(?*TouchButtonFactory, TouchButtonFactory.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn defaultList(self: *Self) void {
        self.list = self.LIST;
        _ = Inheritance.call(self, "toggle", .{ false, self.LIST });
    }
    

    pub fn toggle(self: *Self, save: bool, list: ?*BasicArrayList) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!Object.same(list, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance())) {
            self.savedList = list;
            if (!self.saved) {
                self.list = self.savedList;
            }
        } else {
            if (save) {
                if (!self.saved) {
                    self.saved = true;
                    self.savedList = self.list;
                    self.list = self.LIST;
                } else {
                }
            } else {
                self.list = self.savedList;
                self.saved = false;
            }
        }
    }
    

    // throws Exception
    pub fn setList(self: *Self, list: ?*BasicArrayList) void {
        if (list == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Null List"); break :exception error.Exception; }});
        }
        self.list = list;
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
};

