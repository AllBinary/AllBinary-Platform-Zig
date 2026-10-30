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
// package org.allbinary.media.image.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;

pub const BufferedImageInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.cache.BufferedImageInfo";
    width: i32 = 0,
    height: i32 = 0,
    @"type": i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(width: i32, height: i32, @"type": i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.width = width;
        this.height = height;
        this.@"type" = @"type";
        return this;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn setWidth(self: *Self, width: i32) void {
        self.width = width;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        self.height = height;
    }
    

    pub fn getType(self: *Self) i32 {
        return self.@"type";
    }
    

    pub fn setType(self: *Self, @"type": i32) void {
        self.@"type" = @"type";
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("BufferedImageInfo -") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getWidth() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getHeight() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Type: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getType() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

