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
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;

pub const HttpRequestUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.HttpRequestUtil";
    var instance: ?*HttpRequestUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HttpRequestUtil.create();
    }
    

    pub fn getInstance() ?*HttpRequestUtil {
        return Inheritance.upcast(?*HttpRequestUtil, HttpRequestUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getLastSeparatorIndex(self: *Self, requestPath: ?*String) i32 {
        _ = self;
        var beginIndex: i32 = Inheritance.call(requestPath.?, "lastIndexOf", .{ AbPathData.getInstance().?.SEPARATOR });
        if (beginIndex < 0) {
            beginIndex = Inheritance.call(requestPath.?, "lastIndexOf", .{ String.literal("\\") });
        }
        return beginIndex;
    }
    

    // throws Exception
    pub fn generateFileName(self: *Self, requestPath: ?*String) ?*String {
        const beginIndex: i32 = Inheritance.call(self, "getLastSeparatorIndex", .{ requestPath });
        if (beginIndex < 0) {
            return requestPath;
        } else {
            return Inheritance.upcast(?*String, Inheritance.call(requestPath.?, "substring", .{ beginIndex + 1 }));
        }
    }
};

