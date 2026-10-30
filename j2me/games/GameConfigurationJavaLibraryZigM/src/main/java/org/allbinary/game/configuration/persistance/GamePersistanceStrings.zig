// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.configuration.persistance

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GamePersistanceStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.persistance.GamePersistanceStrings";
    SAVED_GAME_RECORD_ID: ?*String = null,
    SAVED_GAME_CONFIGURATION_RECORD_ID: ?*String = null,
    DEFAULT_INPUT_MAPPING_RECORD_ID: ?*String = null,
    SAVED_INPUT_CONFIGURATION_RECORD_ID: ?*String = null,
    var instance: ?*GamePersistanceStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GamePersistanceStrings.create();
    }

    fn initFields(this: *Self) void {
        this.SAVED_GAME_RECORD_ID = String.literal("_SG");
        this.SAVED_GAME_CONFIGURATION_RECORD_ID = String.literal("_SGC");
        this.DEFAULT_INPUT_MAPPING_RECORD_ID = String.literal("_DIM");
        this.SAVED_INPUT_CONFIGURATION_RECORD_ID = String.literal("_SIC");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GamePersistanceStrings {
        return Inheritance.upcast(?*GamePersistanceStrings, GamePersistanceStrings.instance);
    }
};

