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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ImageActionScriptOutputData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData";
    pub var NAME: ?*String = String.literal("IMAGE_ACTION_OUTPUT_NAME");
    pub var SAVE: ?*String = String.literal("SAVE_IMAGE_ACTION_OUTPUT_NAME");
    pub var DISPLAY: ?*String = String.literal("DISPLAY_IMAGE_ACTION_OUTPUT_NAME");
    pub var TYPE: ?*String = String.literal("TYPE_IMAGE_ACTION_OUTPUT_NAME");
    pub var TYPES: ?*String = String.literal("TYPES_IMAGE_ACTION_OUTPUT_NAME");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

