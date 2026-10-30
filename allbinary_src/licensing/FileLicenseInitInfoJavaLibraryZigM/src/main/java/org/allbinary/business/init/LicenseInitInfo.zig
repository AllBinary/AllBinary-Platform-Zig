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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DebugFactory = @import("org/allbinary/debug/DebugFactory.zig").DebugFactory;
const NoDebug = @import("org/allbinary/debug/NoDebug.zig").NoDebug;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const LicenseInitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.LicenseInitInfo";
    id: ?*String = null,
    serverVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.id = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.serverVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getLicenseId(self: *Self) ?*String {
        return self.id;
    }
    

    pub fn getServer(self: *Self, index: i32) ?*String {
        return Inheritance.cast(?*String, self.serverVector.?.objectArray[@intCast(index)]);
    }
    

    pub fn getNumberOfServers(self: *Self) i32 {
        return self.serverVector.?.size();
    }
    

    pub fn setLicenseId(self: *Self, value: ?*String) void {
        self.id = value;
    }
    

    pub fn clearServers(self: *Self) void {
        self.serverVector = Inheritance.upcast(@TypeOf(self.serverVector), BasicArrayListD.create());
    }
    

    pub fn setServer(self: *Self, value: ?*String, index: i32) void {
        _ = Inheritance.call(self.serverVector.?, "addAt", .{ index, value });
    }
    

    pub fn addServer(self: *Self, value: ?*String) void {
        _ = Inheritance.call(self.serverVector.?, "add", .{ value });
    }
    

    pub fn getServerList(self: *Self) ?*BasicArrayList {
        return self.serverVector;
    }
    

    pub fn setServerList(self: *Self, servers: ?*BasicArrayList) void {
        if (Object.same(DebugFactory.getInstance(), NoDebug.getInstance())) {
            self.serverVector = servers;
        }
    }
};

