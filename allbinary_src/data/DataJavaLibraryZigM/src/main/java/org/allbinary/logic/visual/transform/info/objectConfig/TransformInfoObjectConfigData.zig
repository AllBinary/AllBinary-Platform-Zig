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
// package org.allbinary.logic.visual.transform.info.objectConfig

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonDataFileStrings = @import("org/allbinary/logic/io/file/CommonDataFileStrings.zig").CommonDataFileStrings;

pub const TransformInfoObjectConfigData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData";
    NAME: ?*String = null,
    VARKEY: ?*String = null,
    UNCRYPTED_EXTENSION: ?*String = null,
    ENCRYPTED_EXTENSION: ?*String = null,
    var instance: ?*TransformInfoObjectConfigData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoObjectConfigData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("OBJECTCONFIG_NAME");
        this.VARKEY = String.literal("$");
        this.UNCRYPTED_EXTENSION = Inheritance.upcast(?*String, CommonDataFileStrings.getInstance().?.UNCRYPTED_EXTENSION);
        this.ENCRYPTED_EXTENSION = Inheritance.upcast(?*String, CommonDataFileStrings.getInstance().?.ENCRYPTED_EXTENSION);
    }
    

    pub fn getInstance() ?*TransformInfoObjectConfigData {
        return Inheritance.upcast(?*TransformInfoObjectConfigData, TransformInfoObjectConfigData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

