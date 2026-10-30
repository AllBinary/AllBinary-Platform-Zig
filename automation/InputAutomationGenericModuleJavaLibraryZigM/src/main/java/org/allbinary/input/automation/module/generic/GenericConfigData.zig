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
// package org.allbinary.input.automation.module.generic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GenericConfigData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.GenericConfigData";
    pub var RELATIVE_PATH: ?*String = String.literal("./");
    pub var CONFIG_PATH: ?*String = String.literal("modules/configs/");
    pub var MODULE_RELATIVE_PATH: ?*String = undefined;
    pub var GAME_MODULE_RELATIVE_PATH: ?*String = undefined;
    pub var MMO_GAME_MODULE_RELATIVE_PATH: ?*String = undefined;
    pub var FREE_MMO_GAME_MODULE_RELATIVE_PATH: ?*String = String.literal("free/");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        MODULE_RELATIVE_PATH = Inheritance.upcast(?*String, String.plus(GenericConfigData.RELATIVE_PATH + GenericConfigData.CONFIG_PATH, String.literal("allbinary/input/automation/module/")));
        GAME_MODULE_RELATIVE_PATH = Inheritance.upcast(?*String, String.plus(GenericConfigData.MODULE_RELATIVE_PATH, String.literal("game/")));
        MMO_GAME_MODULE_RELATIVE_PATH = Inheritance.upcast(?*String, String.plus(GenericConfigData.GAME_MODULE_RELATIVE_PATH, String.literal("mmog/")));
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

