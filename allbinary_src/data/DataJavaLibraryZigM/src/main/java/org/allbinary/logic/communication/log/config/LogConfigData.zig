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
// package org.allbinary.logic.communication.log.config

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const LogConfigData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.LogConfigData";
    NAME: ?*String = null,
    DESCRIPTION: ?*String = null,
    FILE: ?*String = null,
    var instance: ?*LogConfigData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogConfigData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("LOG_CONFIG_NAME");
        this.DESCRIPTION = String.literal("LOG_CONFIG_DESCRIPTION");
        this.FILE = String.literal("LOG_CONFIG_FILE");
    }
    

    pub fn getInstance() ?*LogConfigData {
        return Inheritance.upcast(?*LogConfigData, LogConfigData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

