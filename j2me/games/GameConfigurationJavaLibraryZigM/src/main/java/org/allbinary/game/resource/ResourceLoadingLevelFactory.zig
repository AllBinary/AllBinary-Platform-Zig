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
const ResourceLoadingLevel = @import("org/allbinary/game/resource/ResourceLoadingLevel.zig").ResourceLoadingLevel;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ResourceLoadingLevelFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.resource.ResourceLoadingLevelFactory";
    LOAD_EARLY: ?*ResourceLoadingLevel = null,
    LOAD_TOUCH: ?*ResourceLoadingLevel = null,
    LOAD_GAME: ?*ResourceLoadingLevel = null,
    LEVEL: ?*ResourceLoadingLevel = null,
    MAX_LEVEL: ?*ResourceLoadingLevel = null,
    LOAD_ALL: ?*ResourceLoadingLevel = null,
    RESOURCE_LOADING_LEVEL_ARRAY: []?*ResourceLoadingLevel = &.{},
    var instance: ?*ResourceLoadingLevelFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ResourceLoadingLevelFactory.create();
    }

    fn initFields(this: *Self) void {
        this.LOAD_EARLY = Inheritance.callStatic(ResourceLoadingLevel, "create2", .{ String.literal("Load Early"), @as(i32, std.math.maxInt(i32)) });
        this.LOAD_TOUCH = Inheritance.callStatic(ResourceLoadingLevel, "create2", .{ String.literal("Load Touch"), @as(i32, std.math.maxInt(i32)) - 1 });
        this.LOAD_GAME = Inheritance.callStatic(ResourceLoadingLevel, "create2", .{ String.literal("Load Game"), @as(i32, std.math.maxInt(i32)) - 2 });
        this.LEVEL = Inheritance.callStatic(ResourceLoadingLevel, "create2", .{ String.literal("Level"), @as(i32, std.math.maxInt(i32)) - 99 });
        this.MAX_LEVEL = Inheritance.callStatic(ResourceLoadingLevel, "create2", .{ String.literal("Max Level"), @as(i32, std.math.maxInt(i32)) - 100 });
        this.LOAD_ALL = Inheritance.callStatic(ResourceLoadingLevel, "create2", .{ String.literal("Load All"), -1 });
        this.RESOURCE_LOADING_LEVEL_ARRAY = @constCast(&[_]?*ResourceLoadingLevel{ this.LOAD_ALL, this.MAX_LEVEL, this.LEVEL, this.LOAD_GAME, this.LOAD_TOUCH, this.LOAD_EARLY })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ResourceLoadingLevelFactory {
        return Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.instance);
    }
    

    pub fn getLevelString(self: *Self, level: i32) ?*String {
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(self.RESOURCE_LOADING_LEVEL_ARRAY.len))) : (index += 1) {
            if (level == self.RESOURCE_LOADING_LEVEL_ARRAY[@intCast(index)].?.getLevel()) {
                return Inheritance.upcast(?*String, self.RESOURCE_LOADING_LEVEL_ARRAY[@intCast(index)].?.getName());
            }
            }
        }
        return Inheritance.upcast(?*String, String.valueOf(level));
    }
};

