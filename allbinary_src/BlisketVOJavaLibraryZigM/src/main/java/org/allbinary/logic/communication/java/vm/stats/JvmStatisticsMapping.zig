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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const JvmStatistics = @import("org/allbinary/logic/communication/java/vm/stats/JvmStatistics.zig").JvmStatistics;
const JvmStatisticsData = @import("org/allbinary/logic/communication/java/vm/stats/JvmStatisticsData.zig").JvmStatisticsData;

pub const JvmStatisticsMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping";
    base: JvmStatistics = undefined,
    // Implements TableMappingInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JvmStatistics, "create", .{  }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.FREE_MEMORY_BYTES, Inheritance.receiver(self, "getFreeMemoryBytesString").getFreeMemoryBytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.FREE_MEMORY_KILOBYTES, Inheritance.receiver(self, "getFreeMemoryKilobytesString").getFreeMemoryKilobytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.FREE_MEMORY_MEGABYTES, Inheritance.receiver(self, "getFreeMemoryMegabytesString").getFreeMemoryMegabytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.MAX_MEMORY_BYTES, Inheritance.receiver(self, "getMaxMemoryBytesString").getMaxMemoryBytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.MAX_MEMORY_KILOBYTES, Inheritance.receiver(self, "getMaxMemoryKilobytesString").getMaxMemoryKilobytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.MAX_MEMORY_MEGABYTES, Inheritance.receiver(self, "getMaxMemoryMegabytesString").getMaxMemoryMegabytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.NUMBER_OF_THREADS, Inheritance.receiver(self, "getNumberOfThreadsString").getNumberOfThreadsString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.TOTAL_MEMORY_BYTES, Inheritance.receiver(self, "getTotalMemoryBytesString").getTotalMemoryBytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.TOTAL_MEMORY_KILOBYTES, Inheritance.receiver(self, "getTotalMemoryKilobytesString").getTotalMemoryKilobytesString() });
        _ = Inheritance.call(hashMap.?, "put", .{ JvmStatisticsData.TOTAL_MEMORY_MEGABYTES, Inheritance.receiver(self, "getTotalMemoryMegabytesString").getTotalMemoryMegabytesString() });
        return hashMap;
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        _ = self;
        return Inheritance.upcast(?Object, JvmStatisticsData.NAME);
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getFreeMemoryBytesString").getFreeMemoryBytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getFreeMemoryKilobytesString").getFreeMemoryKilobytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getFreeMemoryMegabytesString").getFreeMemoryMegabytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getMaxMemoryBytesString").getMaxMemoryBytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getMaxMemoryKilobytesString").getMaxMemoryKilobytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getMaxMemoryMegabytesString").getMaxMemoryMegabytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getNumberOfThreadsString").getNumberOfThreadsString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getTotalMemoryBytesString").getTotalMemoryBytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getTotalMemoryKilobytesString").getTotalMemoryKilobytesString() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(self, "getTotalMemoryMegabytesString").getTotalMemoryMegabytesString() });
        return vector;
    }
};

