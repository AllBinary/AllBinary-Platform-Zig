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
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const OpenGLImageSpecificFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLImageSpecificFactory";
    updating: bool = false,
    var instance: ?*OpenGLImageSpecificFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLImageSpecificFactory.create();
    }

    fn initFields(this: *Self) void {
        this.updating = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OpenGLImageSpecificFactory {
        return Inheritance.upcast(?*OpenGLImageSpecificFactory, OpenGLImageSpecificFactory.instance);
    }
};

