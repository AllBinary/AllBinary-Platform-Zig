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
// package org.allbinary.logic.system

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const KotlinUtil = @import("org/allbinary/KotlinUtil.zig").KotlinUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const SoftwareInformation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.SoftwareInformation";
    name: ?*String = null,
    shortName: ?*String = null,
    version: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(name: ?*String, version: ?*String, shortName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.version = version;
        this.shortName = Inheritance.upcast(@TypeOf(this.shortName), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ shortName }).?, "append", .{ KotlinUtil.getShortName() }))));
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getVersion(self: *Self) ?*String {
        return self.version;
    }
    

    pub fn toShortString(self: *Self) ?*String {
        return self.shortName;
    }
    

    pub fn toString(self: *Self) ?*String {
        const NAME: ?*String = String.literal("Name: ");
        const VERSION: ?*String = String.literal("Version: ");
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ VERSION });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getVersion() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

