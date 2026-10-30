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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;

pub const GroupFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.identification.GroupFactory";
    logUtil: ?*LogUtil = null,
    NULL_GROUP_ARRAY: []?*Group = &.{},
    list: ?*BasicArrayList = null,
    index: i32 = 0,
    var instance: ?*GroupFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GroupFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.NULL_GROUP_ARRAY = array_N65901: { const array_N65901_array = allocator.alloc(?*Group, @intCast(0)) catch unreachable; @memset(array_N65901_array, null); break :array_N65901 array_N65901_array; };
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.index = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GroupFactory {
        return Inheritance.upcast(?*GroupFactory, GroupFactory.instance);
    }
    

    pub fn getNextGroup(self: *Self) ?*Group {
        const group: ?*Group = Inheritance.cast(?*Group, self.list.?.objectArray[@intCast(self.index)]);
        self.index += 1;
        return group;
    }
    

    pub fn getNextGroupByName(self: *Self, name: ?*String) ?*Group {
        const group: ?*Group = Inheritance.upcast(?*Group, self.getNextGroup());
        _ = Inheritance.call(group.?, "setName", .{ name });
        return group;
    }
    

    pub fn init(self: *Self, groups: i16, nameArray: []?*String) void {
        const stringMaker: ?*StringMaker = StringMaker.create();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const TEAM: ?*String = String.literal("Team ");
        _ = self.list.?.clear();
        self.index = 0;
        var size: i32 = self.list.?.size();
        var name: ?*String = null;
        while (size < @as(i32, @intCast(groups))) {
            name = Inheritance.upcast(@TypeOf(name), stringUtil.?.EMPTY_STRING);
            if (size < @as(i32, @intCast(nameArray.len))) {
                name = Inheritance.upcast(@TypeOf(name), nameArray[@intCast(size)]);
            } else {
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                name = Inheritance.upcast(@TypeOf(name), Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ TEAM }).?, "appendint", .{ size }))));
            }
            _ = Inheritance.call(self.list.?, "add", .{ Inheritance.callStatic(Group, "create2", .{ name, @as(i16, @intCast((size + 3))) }) });
            size += 1;
        }
    }
};

