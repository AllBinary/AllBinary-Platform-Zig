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
// package org.allbinary.logic.communication.java.vm.stats

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const JvmStatisticsData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData";
    pub const JVM_STATISTICS: ?*String = String.literal("JVM_STATISTICS_");
    pub var NAME: ?*String = undefined;
    pub var TOTAL_MEMORY_BYTES: ?*String = undefined;
    pub var TOTAL_MEMORY_KILOBYTES: ?*String = undefined;
    pub var TOTAL_MEMORY_MEGABYTES: ?*String = undefined;
    pub var FREE_MEMORY_BYTES: ?*String = undefined;
    pub var FREE_MEMORY_KILOBYTES: ?*String = undefined;
    pub var FREE_MEMORY_MEGABYTES: ?*String = undefined;
    pub var MAX_MEMORY_BYTES: ?*String = undefined;
    pub var MAX_MEMORY_KILOBYTES: ?*String = undefined;
    pub var MAX_MEMORY_MEGABYTES: ?*String = undefined;
    pub var NUMBER_OF_THREADS: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NAME = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("NAME")));
        TOTAL_MEMORY_BYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("TOTAL_MEMORY_BYTES")));
        TOTAL_MEMORY_KILOBYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("TOTAL_MEMORY_KILOBYTES")));
        TOTAL_MEMORY_MEGABYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("TOTAL_MEMORY_MEGABYTES")));
        FREE_MEMORY_BYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("FREE_MEMORY_BYTES")));
        FREE_MEMORY_KILOBYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("FREE_MEMORY_KILOBYTES")));
        FREE_MEMORY_MEGABYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("FREE_MEMORY_MEGABYTES")));
        MAX_MEMORY_BYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("MAX_MEMORY_BYTES")));
        MAX_MEMORY_KILOBYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("MAX_MEMORY_KILOBYTES")));
        MAX_MEMORY_MEGABYTES = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("MAX_MEMORY_MEGABYTES")));
        NUMBER_OF_THREADS = Inheritance.upcast(?*String, String.plus(JvmStatisticsData.JVM_STATISTICS, String.literal("NUMBER_OF_THREADS")));
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        
        return this;
    }
};

