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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const PathCacheFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory";
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    hashtable: ?*ABHashtable = null,
    var pathFactory: ?*PathCacheFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        pathFactory = PathCacheFactory.create();
    }

    fn initFields(this: *Self) void {
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PathCacheFactory {
        return Inheritance.upcast(?*PathCacheFactory, PathCacheFactory.pathFactory);
    }
    

    pub fn getSize(self: *Self) i32 {
        return Inheritance.receiver(self.hashtable.?, "size").size();
    }
    

    pub fn add(self: *Self, pathId: ?*Integer, list: ?*BasicArrayList) void {
        _ = Inheritance.call(self.hashtable.?, "put", .{ pathId, list });
    }
    

    pub fn remove(self: *Self, pathId: ?*Integer) void {
        _ = Inheritance.call(self.hashtable.?, "remove", .{ pathId });
    }
    

    // throws Exception
    pub fn removeAll(self: *Self) void {
        _ = Inheritance.receiver(self.hashtable.?, "clear").clear();
        if (Inheritance.receiver(self.hashtable.?, "size").size() > 0) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Did not clear"); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn getOrCreate(self: *Self, pathIdInteger: ?*Integer) ?*BasicArrayList {
        var listCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.hashtable.?, "get", .{ pathIdInteger }));
        if (listCanBeNull == null) {
            listCanBeNull = Inheritance.upcast(@TypeOf(listCanBeNull), self.basicArrayListUtil.?.getImmutableInstance());
        }
        return Inheritance.cast(?*BasicArrayList, listCanBeNull);
    }
};

