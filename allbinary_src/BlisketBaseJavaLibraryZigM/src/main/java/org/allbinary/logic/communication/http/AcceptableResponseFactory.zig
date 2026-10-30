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
// package org.allbinary.logic.communication.http

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AcceptableResponse = @import("org/allbinary/logic/communication/http/AcceptableResponse.zig").AcceptableResponse;

pub const AcceptableResponseFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.AcceptableResponseFactory";
    HTML: ?*AcceptableResponse = null,
    WML: ?*AcceptableResponse = null,
    VXML: ?*AcceptableResponse = null,
    var instance: ?*AcceptableResponseFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AcceptableResponseFactory.create();
    }

    fn initFields(this: *Self) void {
        this.HTML = Inheritance.callStatic(AcceptableResponse, "create3", .{ String.literal("text/html"), String.literal("html"), 0 });
        this.WML = Inheritance.callStatic(AcceptableResponse, "create3", .{ String.literal("text/wml"), String.literal("wml"), 1 });
        this.VXML = Inheritance.callStatic(AcceptableResponse, "create3", .{ String.literal("text/vxml"), String.literal("vxml"), 2 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AcceptableResponseFactory {
        return Inheritance.upcast(?*AcceptableResponseFactory, AcceptableResponseFactory.instance);
    }
};

