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
// package org.allbinary.logic.system

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;

pub const PlatformAssetManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.PlatformAssetManager";
    var instance: ?*PlatformAssetManager = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PlatformAssetManager.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PlatformAssetManager {
        return Inheritance.upcast(?*PlatformAssetManager, PlatformAssetManager.instance);
    }
    

    // throws Exception
    pub fn getResourceAsStream(self: *Self, resource: ?*String) ?*InputStream {
        _ = self;
        const resourceUtil: ?*ResourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
        const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(resourceUtil.?, "getResourceAsStream", .{ resource }));
        return inputStream;
    }
};

