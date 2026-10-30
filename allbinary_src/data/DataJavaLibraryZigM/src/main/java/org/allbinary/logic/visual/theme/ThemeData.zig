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
// package org.allbinary.logic.visual.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ThemeData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.theme.ThemeData";
    NAME: ?*String = null,
    PATH: ?*String = null,
    PREVIEW_IMAGE_NAME: ?*String = null,
    PREVIEW_IMAGE_PATH: ?*String = null,
    var instance: ?*ThemeData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ThemeData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("THEME_NAME");
        this.PATH = String.literal("THEME_PATH");
        this.PREVIEW_IMAGE_NAME = String.literal("THEME_PREVIEW_IMAGE_NAME");
        this.PREVIEW_IMAGE_PATH = String.literal("THEME_PREVIEW_IMAGE_PATH");
    }
    

    pub fn getInstance() ?*ThemeData {
        return Inheritance.upcast(?*ThemeData, ThemeData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

