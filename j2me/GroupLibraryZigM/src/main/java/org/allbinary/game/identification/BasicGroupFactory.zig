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
// package org.allbinary.game.identification

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;

pub const BasicGroupFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.identification.BasicGroupFactory";
    NAME: ?*String = null,
    NO_SUCH_GROUP: ?*String = null,
    GOOD: ?*Group = null,
    ENEMY: ?*Group = null,
    ENEMY_ON_LEVEL: ?*Group = null,
    NONE: ?*Group = null,
    GOOD_ARRAY: []?*Group = &.{},
    ENEMY_ARRAY: []?*Group = &.{},
    ENEMY_ON_LEVEL_ARRAY: []?*Group = &.{},
    NONE_ARRAY: []?*Group = &.{},
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("GROUP_NAME");
        this.NO_SUCH_GROUP = String.literal("No Such Group: ");
        this.GOOD = Inheritance.callStatic(Group, "create2", .{ String.literal("Good Guys"), @as(i16, @intCast(0)) });
        this.ENEMY = Inheritance.callStatic(Group, "create2", .{ String.literal("Bad Guys"), @as(i16, @intCast(1)) });
        this.ENEMY_ON_LEVEL = Inheritance.callStatic(Group, "create2", .{ String.literal("Bad Guys on Level"), @as(i16, @intCast(2)) });
        this.NONE = Inheritance.callStatic(Group, "create2", .{ String.literal("Not On A Team"), @as(i16, @intCast(3)) });
        this.GOOD_ARRAY = @constCast(&[_]?*Group{ this.GOOD })[0..];
        this.ENEMY_ARRAY = @constCast(&[_]?*Group{ this.ENEMY })[0..];
        this.ENEMY_ON_LEVEL_ARRAY = @constCast(&[_]?*Group{ this.ENEMY, this.ENEMY_ON_LEVEL })[0..];
        this.NONE_ARRAY = @constCast(&[_]?*Group{ this.NONE })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicGroupFactory {
        if (Object.same(BasicGroupFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            BasicGroupFactory.instance = Inheritance.upcast(@TypeOf(BasicGroupFactory.instance), BasicGroupFactory.create());
        }
        return Inheritance.cast(?*BasicGroupFactory, BasicGroupFactory.instance);
    }
};

