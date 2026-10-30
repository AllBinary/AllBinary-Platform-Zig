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
// package org.allbinary.logic.system.security.licensing.registration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const RegistrationConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration";
    registrationCode: ?*String = null,
    NAME: ?*String = null,
    var SINGLETON: ?*RegistrationConfiguration = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = RegistrationConfiguration.create();
    }

    fn initFields(this: *Self) void {
        this.registrationCode = String.literal("No Registration Code");
        this.NAME = String.literal("registrationid");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RegistrationConfiguration {
        return Inheritance.upcast(?*RegistrationConfiguration, RegistrationConfiguration.SINGLETON);
    }
    

    // throws Exception
    pub fn read(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        _ = self;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Registration Code: ") }).?, "append", .{ self.getRegistrationCode() }))));
    }
    

    pub fn setRegistrationCode(self: *Self, registrationCode: ?*String) void {
        self.registrationCode = registrationCode;
    }
    

    pub fn getRegistrationCode(self: *Self) ?*String {
        return self.registrationCode;
    }
};

