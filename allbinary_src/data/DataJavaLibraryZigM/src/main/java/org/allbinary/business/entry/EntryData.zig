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
// package org.allbinary.business.entry

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const EntryData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.entry.EntryData";
    ID: ?*String = null,
    ENCRYPTION: ?*String = null,
    TIMECREATED: ?*String = null,
    LASTMODIFIED: ?*String = null,
    DEFAULT: ?*String = null,
    SPECIAL: ?*String = null,
    ENABLE: ?*String = null,
    YES: ?*String = null,
    NO: ?*String = null,
    var instance: ?*EntryData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = EntryData.create();
    }

    fn initFields(this: *Self) void {
        this.ID = String.literal("ENTRY_ID");
        this.ENCRYPTION = String.literal("ENTRY_ENCRYPTION");
        this.TIMECREATED = String.literal("ENTRY_TIMECREATED");
        this.LASTMODIFIED = String.literal("ENTRY_LASTMODIFIED");
        this.DEFAULT = String.literal("ENTRY_DEFAULT");
        this.SPECIAL = String.literal("ENTRY_SPECIAL");
        this.ENABLE = String.literal("ENTRY_ENABLE");
        this.YES = String.literal("Yes");
        this.NO = String.literal("No");
    }
    

    pub fn getInstance() ?*EntryData {
        return Inheritance.upcast(?*EntryData, EntryData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

