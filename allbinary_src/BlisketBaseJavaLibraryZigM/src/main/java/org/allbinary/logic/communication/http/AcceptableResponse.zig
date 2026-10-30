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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AcceptableResponseUtil = @import("org/allbinary/logic/communication/http/AcceptableResponseUtil.zig").AcceptableResponseUtil;

pub const AcceptableResponse = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.AcceptableResponse";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create3(candidate: ?*String, tagName: ?*String, index: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ tagName, this, this.commonStrings.?.CONSTRUCTOR });
        const acceptableResponseUtil: ?*AcceptableResponseUtil = Inheritance.upcast(?*AcceptableResponseUtil, AcceptableResponseUtil.getInstance());
        _ = Inheritance.call(acceptableResponseUtil.?.candidateVector.?, "addAt", .{ index, candidate });
        _ = Inheritance.call(acceptableResponseUtil.?.tagNameVector.?, "addAt", .{ index, tagName });
        return this;
    }
};

