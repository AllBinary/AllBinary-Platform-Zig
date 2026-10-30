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

pub const PersistanceStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.persistance.PersistanceStrings";
    SAVING: ?*String = null,
    NUMBER_OF_RECORDS: ?*String = null,
    LOADING_ID: ?*String = null,
    LOAD_ALL: ?*String = null,
    DELETING_WITH_ID: ?*String = null,
    CLOSING_RECORDSTORE: ?*String = null,
    NOT_SAVING: ?*String = null,
    ERROR_LOADING: ?*String = null,
    ERROR_LOADING_ID: ?*String = null,
    ID: ?*String = null,
    GAME_ACTION_INPUT: ?*String = null,
    var instance: ?*PersistanceStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PersistanceStrings.create();
    }

    fn initFields(this: *Self) void {
        this.SAVING = String.literal("Saving: ");
        this.NUMBER_OF_RECORDS = String.literal("Number of records: ");
        this.LOADING_ID = String.literal("Loading data with id: ");
        this.LOAD_ALL = String.literal("loadAll");
        this.DELETING_WITH_ID = String.literal("Deleting data with id: ");
        this.CLOSING_RECORDSTORE = String.literal("Closing RecordStore");
        this.NOT_SAVING = String.literal("Not Saving: ");
        this.ERROR_LOADING = String.literal("Error Loading gameActionInput: ");
        this.ERROR_LOADING_ID = String.literal("Error Loading id: ");
        this.ID = String.literal(" id: ");
        this.GAME_ACTION_INPUT = String.literal(" GameActionInput: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PersistanceStrings {
        return Inheritance.upcast(?*PersistanceStrings, PersistanceStrings.instance);
    }
};

