// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;

pub const ScaleProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.ScaleProperties";
    scaleX: f32 = 0.0,
    scaleY: f32 = 0.0,
    scaleWidth: i32 = 0,
    scaleHeight: i32 = 0,
    shouldScale: bool = false,
    pub var instance: ?*ScaleProperties = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ScaleProperties.create();
    }

    fn initFields(this: *Self) void {
        this.scaleX = 1.0;
        this.scaleY = 1.0;
        this.scaleWidth = 0;
        this.scaleHeight = 0;
        this.shouldScale = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.COLON_SEP }).?, "appendboolean", .{ self.shouldScale }).?, "append", .{ String.literal("scaleX: ") }).?, "appendfloat", .{ self.scaleX }).?, "append", .{ String.literal("scaleY: ") }).?, "appendfloat", .{ self.scaleY }).?, "append", .{ String.literal("scaleWidth: ") }).?, "appendint", .{ self.scaleWidth }).?, "append", .{ String.literal("scaleHeight: ") }).?, "appendint", .{ self.scaleHeight }))));
    }
};

