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
// package org.allbinary.logic.communication.http.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AbeHttpRequestInfoData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData";
    HTTP_USER_AGENT: ?*String = null,
    REMOTE_ADDRESS: ?*String = null,
    REMOTE_HOST: ?*String = null,
    REMOTE_HOST_BY_ADDRESS: ?*String = null,
    REMOTE_PORT: ?*String = null,
    REQUEST_FILE_PATH: ?*String = null,
    var instance: ?*AbeHttpRequestInfoData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbeHttpRequestInfoData.create();
    }

    fn initFields(this: *Self) void {
        this.HTTP_USER_AGENT = String.literal("HTTP_USER_AGENT");
        this.REMOTE_ADDRESS = String.literal("REMOTE_ADDRESS");
        this.REMOTE_HOST = String.literal("REMOTE_HOST");
        this.REMOTE_HOST_BY_ADDRESS = String.literal("REMOTE_HOST_BY_ADDRESS");
        this.REMOTE_PORT = String.literal("REMOTE_PORT");
        this.REQUEST_FILE_PATH = String.literal("REQUEST_FILE_PATH");
    }
    

    pub fn getInstance() ?*AbeHttpRequestInfoData {
        return Inheritance.upcast(?*AbeHttpRequestInfoData, AbeHttpRequestInfoData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

