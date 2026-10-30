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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AbeClientInformationData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.AbeClientInformationData";
    KEY: ?*String = null,
    NAME: ?*String = null,
    VERSION: ?*String = null,
    SPECIALNAME: ?*String = null,
    LICENSEID: ?*String = null,
    LICENSE_TYPE: ?*String = null,
    PREVIOUSLICENSEID: ?*String = null,
    OSNAME: ?*String = null,
    OSARCH: ?*String = null,
    OSVERSION: ?*String = null,
    OS: ?*String = null,
    HARDWARE: ?*String = null,
    LICENSESERVERS: ?*String = null,
    NEWLICENSE: ?*String = null,
    ISNEW: ?*String = null,
    SPECIAL: ?*String = null,
    var instance: ?*AbeClientInformationData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbeClientInformationData.create();
    }

    fn initFields(this: *Self) void {
        this.KEY = String.literal("KEY");
        this.NAME = String.literal("NAME");
        this.VERSION = String.literal("VERSION");
        this.SPECIALNAME = String.literal("SPECIALNAME");
        this.LICENSEID = String.literal("LICENSEID");
        this.LICENSE_TYPE = String.literal("LICENSETYPE");
        this.PREVIOUSLICENSEID = String.literal("PREVIOUSLICENSEID");
        this.OSNAME = String.literal("OSNAME");
        this.OSARCH = String.literal("OSARCH");
        this.OSVERSION = String.literal("OSVERSION");
        this.OS = String.literal("OS");
        this.HARDWARE = String.literal("HARDWARE");
        this.LICENSESERVERS = String.literal("LICENSESERVERS");
        this.NEWLICENSE = String.literal("NEWLICENSE");
        this.ISNEW = String.literal("ISNEW");
        this.SPECIAL = String.literal("SPECIAL");
    }
    

    pub fn getInstance() ?*AbeClientInformationData {
        return Inheritance.upcast(?*AbeClientInformationData, AbeClientInformationData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

