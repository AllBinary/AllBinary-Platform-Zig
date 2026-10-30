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
// package org.allbinary.logic.java.characters

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const CharacterSetData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.characters.CharacterSetData";
    US_ASCII: ?*String = null,
    ISO_8859_1: ?*String = null,
    UTF_8: ?*String = null,
    UTF_16: ?*String = null,
    UTF_16BE: ?*String = null,
    UTF_16LE: ?*String = null,
    var instance: ?*CharacterSetData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CharacterSetData.create();
    }

    fn initFields(this: *Self) void {
        this.US_ASCII = String.literal("US-ASCII");
        this.ISO_8859_1 = String.literal("ISO-8859-1");
        this.UTF_8 = String.literal("UTF-8");
        this.UTF_16 = String.literal("UTF-16");
        this.UTF_16BE = String.literal("UTF-16BE");
        this.UTF_16LE = String.literal("UTF-16LE");
    }
    

    pub fn getInstance() ?*CharacterSetData {
        return Inheritance.upcast(?*CharacterSetData, CharacterSetData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

