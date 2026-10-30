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
// package org.allbinary.logic.system.hardware.components.linux

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const CpuInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.components.linux.CpuInfo";
    name: ?*String = null,
    pub var PROCESSOR: ?*CpuInfo = undefined;
    pub var VENDORID: ?*CpuInfo = undefined;
    pub var CPUFAMILY: ?*CpuInfo = undefined;
    pub var MODEL: ?*CpuInfo = undefined;
    pub var MODELNAME: ?*CpuInfo = undefined;
    pub var STEPPING: ?*CpuInfo = undefined;
    pub var CPUMHZ: ?*CpuInfo = undefined;
    pub var CACHESIZE: ?*CpuInfo = undefined;
    pub var FDIVBUG: ?*CpuInfo = undefined;
    pub var HLTBUG: ?*CpuInfo = undefined;
    pub var F00FBUG: ?*CpuInfo = undefined;
    pub var COMABUG: ?*CpuInfo = undefined;
    pub var FPU: ?*CpuInfo = undefined;
    pub var FPUEXCEPTION: ?*CpuInfo = undefined;
    pub var CPUIDLEVEL: ?*CpuInfo = undefined;
    pub var WP: ?*CpuInfo = undefined;
    pub var FLAGS: ?*CpuInfo = undefined;
    pub var BOGOMIPS: ?*CpuInfo = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        PROCESSOR = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("processor") });
        VENDORID = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("vendor_id") });
        CPUFAMILY = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("cpu family") });
        MODEL = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("model") });
        MODELNAME = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("model name") });
        STEPPING = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("stepping") });
        CPUMHZ = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("cpu MHz") });
        CACHESIZE = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("cache size") });
        FDIVBUG = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("fdiv_bug") });
        HLTBUG = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("hlt_bug") });
        F00FBUG = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("f00f_bug") });
        COMABUG = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("coma_bug") });
        FPU = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("fpu") });
        FPUEXCEPTION = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("fpu_exception") });
        CPUIDLEVEL = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("cache size") });
        WP = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("yes") });
        FLAGS = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("flags") });
        BOGOMIPS = Inheritance.callStatic(CpuInfo, "create1", .{ String.literal("bogomips") });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.name;
    }
};

