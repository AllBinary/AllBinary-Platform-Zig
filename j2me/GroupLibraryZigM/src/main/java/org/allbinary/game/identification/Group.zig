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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GroupCommonFactory = @import("org/allbinary/game/identification/GroupCommonFactory.zig").GroupCommonFactory;
const GroupInterface = @import("org/allbinary/game/identification/GroupInterface.zig").GroupInterface;

pub const Group = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.identification.Group";
    pub const java_interfaces = .{ GroupInterface };
    name: ?*String = null,
    teamId: i16 = 0,
    string: ?*String = null,
    // Implements GroupInterface

    fn initFields(this: *Self) void {
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        
        this.string = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create2(teamName: ?*String, teamId: i16) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.teamId = teamId;
        _ = Inheritance.call(this, "setName", .{ teamName });
        return this;
    }
    

    pub fn getGroupName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
        const groupCommonFactory: ?*GroupCommonFactory = Inheritance.upcast(?*GroupCommonFactory, GroupCommonFactory.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ groupCommonFactory.?.GROUP_NAME_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.name });
        _ = Inheritance.call(stringBuffer.?, "append", .{ groupCommonFactory.?.ID_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendshort", .{ self.teamId });
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getGroupId(self: *Self) i16 {
        return self.teamId;
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.string;
    }
};

