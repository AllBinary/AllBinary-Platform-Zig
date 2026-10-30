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
// package org.allbinary.thirdparty.store

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ThirdPartyMessageFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thirdparty.store.ThirdPartyMessageFactory";
    AUTHORIZED: ?*String = null,
    NOT_AUTHORIZED: ?*String = null,
    LINKAGE_ERROR: ?*String = null,
    var instance: ?*ThirdPartyMessageFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ThirdPartyMessageFactory.create();
    }

    fn initFields(this: *Self) void {
        this.AUTHORIZED = String.literal("Authorized");
        this.NOT_AUTHORIZED = String.literal("Not Authorized");
        this.LINKAGE_ERROR = String.literal("Linkage Error");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ThirdPartyMessageFactory {
        return Inheritance.upcast(?*ThirdPartyMessageFactory, ThirdPartyMessageFactory.instance);
    }
};

