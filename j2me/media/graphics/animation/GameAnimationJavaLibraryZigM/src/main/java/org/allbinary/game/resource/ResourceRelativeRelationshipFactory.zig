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
// package org.allbinary.game.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const RelativeRelationship = @import("org/allbinary/graphics/RelativeRelationship.zig").RelativeRelationship;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const ResourceRelativeRelationshipFactoryInterface = @import("org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface.zig").ResourceRelativeRelationshipFactoryInterface;

pub const ResourceRelativeRelationshipFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.resource.ResourceRelativeRelationshipFactory";
    pub const java_interfaces = .{ ResourceRelativeRelationshipFactoryInterface };
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    hashtable: ?*ABHashtable = null,
    initialized: bool = false,
    // Implements ResourceRelativeRelationshipFactoryInterface

    fn initFields(this: *Self) void {
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.initialized = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, level: i32) void {
        _ = level;
        _ = Inheritance.call(self, "setInitialized", .{ true });
    }
    

    // throws Exception
    pub fn getResourceRelativeRelationshipList(self: *Self, resource: ?*String) ?*BasicArrayList {
        const listCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.hashtable.?, "get", .{ resource }));
        if (listCanBeNull == null) {
            return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
        }
        return Inheritance.cast(?*BasicArrayList, listCanBeNull);
    }
    

    // throws Exception
    pub fn addResourceRelativeRelationship(self: *Self, resource: ?*String, hardPoint: ?*RelativeRelationship) void {
        var list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getResourceRelativeRelationshipList", .{ resource }));
        if (Object.same(list, self.basicArrayListUtil.?.getImmutableInstance())) {
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
        }
        _ = Inheritance.call(list.?, "add", .{ hardPoint });
        _ = Inheritance.call(self.hashtable.?, "put", .{ resource, list });
    }
    

    pub fn isLoadingLevel(self: *Self, level: i32) bool {
        _ = level;
        _ = self;
        return false;
    }
    

    pub fn isFeature(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn setInitialized(self: *Self, initialized: bool) void {
        self.initialized = initialized;
    }
    

    pub fn isInitialized(self: *Self) bool {
        return self.initialized;
    }
};

