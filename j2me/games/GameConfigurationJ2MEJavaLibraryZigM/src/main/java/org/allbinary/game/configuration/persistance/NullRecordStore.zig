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
// const RecordStore = @import("javax/microedition/rms/RecordStore.zig").RecordStore;

pub const NullRecordStore = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.persistance.NullRecordStore";
    base: RecordStore = undefined,
    pub var NULL_RECORD_STORE: ?*NullRecordStore = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_RECORD_STORE = NullRecordStore.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RecordStore.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

