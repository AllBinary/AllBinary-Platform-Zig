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
// package org.allbinary.logic.communication.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Globals = @import("org/allbinary/globals/Globals.zig").Globals;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const TestRemoteLogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.TestRemoteLogUtil";
    pub const PATH: ?*String = String.literal("G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        _ = Inheritance.call(Globals.getInstance().?, "init", .{ Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(this).?.class))).?, "getClassLoader").getClassLoader(), TestRemoteLogUtil.PATH });
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("Test"), String.literal("TestClass"), exception: { _ = String.literal("Pretend Exception"); break :exception error.Exception; } });
        return this;
    }
    

    // throws Exception
    pub fn main(args: []?*String) void {
        _ = args;
        TestRemoteLogUtil.create();
    }
};

