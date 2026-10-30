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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.logo

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const LogoData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData";
    NAME: ?*String = null,
    IMAGEPATH: ?*String = null,
    IMAGEFILENAME: ?*String = null,
    IMAGE: ?*String = null,
    var instance: ?*LogoData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogoData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("LOGO_NAME");
        this.IMAGEPATH = String.literal("LOGO_IMAGE_PATH");
        this.IMAGEFILENAME = String.literal("LOGO_IMAGE_FILE_NAME");
        this.IMAGE = String.literal("LOGO_IMAGE");
    }
    

    pub fn getInstance() ?*LogoData {
        return Inheritance.upcast(?*LogoData, LogoData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

