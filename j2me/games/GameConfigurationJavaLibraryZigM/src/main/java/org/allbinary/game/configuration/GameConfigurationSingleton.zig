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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GameConfiguration = @import("org/allbinary/game/configuration/GameConfiguration.zig").GameConfiguration;

pub const GameConfigurationSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameConfigurationSingleton";
    list: ?*BasicArrayList = null,
    hashtable: ?*ABHashtable = null,
    var SINGLETON: ?*GameConfigurationSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = GameConfigurationSingleton.create();
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn getInstance() ?*GameConfigurationSingleton {
        return Inheritance.upcast(?*GameConfigurationSingleton, GameConfigurationSingleton.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.list = Inheritance.upcast(@TypeOf(this.list), BasicArrayListD.create());
        this.hashtable = Inheritance.upcast(@TypeOf(this.hashtable), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        return this;
    }
    

    pub fn getInstanceByName(self: *Self, name: ?*String) ?*GameConfiguration {
        return Inheritance.cast(?*GameConfiguration, Inheritance.call(self.hashtable.?, "get", .{ name }));
    }
    

    pub fn getOptionsBasicArrayList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
    

    pub fn add(self: *Self, gameConfiguration: ?*GameConfiguration) void {
        _ = Inheritance.call(self.list.?, "add", .{ gameConfiguration });
    }
    

    pub fn getHashtable(self: *Self) ?*ABHashtable {
        return self.hashtable;
    }
};

