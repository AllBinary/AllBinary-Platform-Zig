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
const ChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/ChangedGameFeatureListener.zig").ChangedGameFeatureListener;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const Feature = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.Feature";
    name: ?*String = null,
    var hashtable: ?*ABHashtable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        _ = Inheritance.callStatic(Feature, "add", .{ name, this });
        _ = Inheritance.call(ChangedGameFeatureListener.getInstance().?, "add", .{ this });
        return this;
    }
    

    pub fn getInstance(name: ?*String) ?*Feature {
        return Inheritance.cast(?*Feature, Inheritance.call(Feature.hashtable.?, "get", .{ name }));
    }
    

    pub fn add(name: ?*String, gameFeature: ?*Feature) void {
        _ = Inheritance.call(Feature.hashtable.?, "put", .{ name, gameFeature });
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.getName());
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
};

