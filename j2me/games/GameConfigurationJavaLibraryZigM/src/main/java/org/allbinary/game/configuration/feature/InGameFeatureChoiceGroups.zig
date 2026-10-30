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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const InGameFeatureChoiceGroups = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups";
    hashtable: ?*ABHashtable = null,
    var gameFeatureChoiceGroupsExclusive: ?*InGameFeatureChoiceGroups = undefined;
    var gameFeatureChoiceGroupsMultiple: ?*InGameFeatureChoiceGroups = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        gameFeatureChoiceGroupsExclusive = InGameFeatureChoiceGroups.create();
        gameFeatureChoiceGroupsMultiple = InGameFeatureChoiceGroups.create();
    }

    fn initFields(this: *Self) void {
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getExclusiveInstance() ?*InGameFeatureChoiceGroups {
        return Inheritance.upcast(?*InGameFeatureChoiceGroups, InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive);
    }
    

    pub fn getMultipleInstance() ?*InGameFeatureChoiceGroups {
        return Inheritance.upcast(?*InGameFeatureChoiceGroups, InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple);
    }
    

    pub fn get(self: *Self) ?*ABHashtable {
        return self.hashtable;
    }
    

    pub fn add(self: *Self, name: ?*String, list: ?*BasicArrayList) void {
        _ = Inheritance.call(self.hashtable.?, "put", .{ name, list });
    }
};

