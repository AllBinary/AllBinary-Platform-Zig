// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.persistance

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;

pub const PlatformRecordIdUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.persistance.PlatformRecordIdUtil";
    PLATFORM_SHORT_NAME: ?*String = null,
    var instance: ?*PlatformRecordIdUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PlatformRecordIdUtil.create();
    }

    fn initFields(this: *Self) void {
        this.PLATFORM_SHORT_NAME = String.literal("HTML");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PlatformRecordIdUtil {
        return Inheritance.upcast(?*PlatformRecordIdUtil, PlatformRecordIdUtil.instance);
    }
    

    pub fn getRecordId(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, baseRecordId: ?*String) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ abeClientInformation.?.toShortString() }).?, "append", .{ CommonSeps.getInstance().?.UNDERSCORE }).?, "append", .{ self.PLATFORM_SHORT_NAME }).?, "append", .{ baseRecordId }))));
    }
};

