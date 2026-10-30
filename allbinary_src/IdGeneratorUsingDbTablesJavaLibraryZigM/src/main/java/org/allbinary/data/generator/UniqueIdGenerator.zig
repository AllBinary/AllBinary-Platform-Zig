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
// package org.allbinary.data.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const IdGeneratorEntity = @import("org/allbinary/data/tables/generator/IdGeneratorEntity.zig").IdGeneratorEntity;
const IdGeneratorEntityFactory = @import("org/allbinary/data/tables/generator/IdGeneratorEntityFactory.zig").IdGeneratorEntityFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const IdGeneratorInterface = @import("org/allbinary/data/generator/IdGeneratorInterface.zig").IdGeneratorInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const UniqueIdGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.generator.UniqueIdGenerator";
    pub const java_interfaces = .{ IdGeneratorInterface };
    logUtil: ?*LogUtil = null,
    idGeneratorEntity: ?*IdGeneratorEntity = null,
    name: ?*String = null,
    // Implements IdGeneratorInterface
    pub const EXT: ?*String = String.literal(".unq");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.name = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.idGeneratorEntity = Inheritance.cast(?*IdGeneratorEntity, IdGeneratorEntityFactory.getInstance());
        return this;
    }
    

    pub fn initialize(self: *Self, value: i32) void {
        { // try
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(vector.?, "add", .{ self.name });
            _ = Inheritance.call(vector.?, "add", .{ Object.toString(Object.of(Inheritance.callStatic(Long, "valueOf", .{ value }))) });
            _ = Inheritance.call(self.idGeneratorEntity.?, "insert", .{ vector });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("initialize"), e });
//             }
    }
    

    // throws Exception
    pub fn setFile(self: *Self, filePathName: ?*String, name: ?*String) void {
        _ = filePathName;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.name = name;
    }
    

    // throws IOException
    pub fn getNext(self: *Self) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const idLong: ?*Long = Inheritance.upcast(?*Long, Inheritance.call(self.idGeneratorEntity.?, "get", .{ self.name }));
            const newValue: ?*Long = Inheritance.upcast(?*Long, Inheritance.callStatic(Long, "valueOf", .{ idLong.?.longValue() + 1 }));
            _ = Inheritance.call(self.idGeneratorEntity.?, "update", .{ self.name, newValue });
            return Inheritance.upcast(?*String, String.valueOf(idLong.?));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("getNext"), e });
//             }
//             return String.literal("Error");
    }
};

