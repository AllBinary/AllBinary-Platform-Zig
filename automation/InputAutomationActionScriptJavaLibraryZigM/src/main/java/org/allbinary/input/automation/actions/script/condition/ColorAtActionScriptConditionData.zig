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
// package org.allbinary.input.automation.actions.script.condition

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ColorAtActionScriptConditionData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData";
    pub var NAME: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_NAME");
    pub var LOCATION_X: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_LOCATION_X");
    pub var LOCATION_Y: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_LOCATION_Y");
    pub var MIN_RED: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_MIN_RED");
    pub var MAX_RED: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_MAX_RED");
    pub var MIN_GREEN: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_MIN_GREEN");
    pub var MAX_GREEN: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_MAX_GREEN");
    pub var MIN_BLUE: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_MIN_BLUE");
    pub var MAX_BLUE: ?*String = String.literal("COLOR_AT_ACTION_CONDITION_MAX_BLUE");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

