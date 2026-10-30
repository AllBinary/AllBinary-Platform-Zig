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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GroupCommonFactory = @import("org/allbinary/game/identification/GroupCommonFactory.zig").GroupCommonFactory;

pub const CompositeGroup = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.identification.CompositeGroup";
    logUtil: ?*LogUtil = null,
    groupInterface: ?*Group = null,
    list: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create1(groupInterface: ?*Group) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.groupInterface = groupInterface;
        return this;
    }
    

    pub fn clear(self: *Self) void {
        _ = self.list.?.clear();
    }
    

    pub fn add(self: *Self, groupInterface: ?*Group) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const groupCommonFactory: ?*GroupCommonFactory = Inheritance.upcast(?*GroupCommonFactory, GroupCommonFactory.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ groupCommonFactory.?.ADDING_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(groupInterface)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ groupCommonFactory.?.TO_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.groupInterface }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.ADD });
        _ = Inheritance.call(self.list.?, "add", .{ groupInterface });
    }
    

    pub fn isInGroup(self: *Self, groupInterface: ?*Group) bool {
        if (Inheritance.call(self.list.?, "contains", .{ groupInterface })) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getGroup(self: *Self) ?*Group {
        return self.groupInterface;
    }
};

