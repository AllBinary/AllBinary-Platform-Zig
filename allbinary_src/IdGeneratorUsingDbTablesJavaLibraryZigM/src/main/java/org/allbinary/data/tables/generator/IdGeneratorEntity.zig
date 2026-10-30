// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
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
// package org.allbinary.data.tables.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const IdGeneratorEntityInterface = @import("org/allbinary/data/tables/generator/IdGeneratorEntityInterface.zig").IdGeneratorEntityInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const IdGeneratorEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.generator.IdGeneratorEntity";
    pub const java_interfaces = .{ IdGeneratorEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    tableData: ?*String = null,
    NAME: ?*String = null,
    VALUE: ?*String = null,
    // Implements IdGeneratorEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("idgenerator");
        
        this.NAME = String.literal("NAME");
        this.VALUE = String.literal("VALUE");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        this.tableData = Inheritance.upcast(@TypeOf(this.tableData), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.CREATE_TABLE }).?, "append", .{ this.tableName }).?, "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.START }).?, "append", .{ this.NAME }).?, "append", .{ Inheritance.fieldPointer(this, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ this.VALUE }).?, "append", .{ Inheritance.fieldPointer(this, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ this.NAME }).?, "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.END }))));
        _ = Inheritance.call(&this.base, "setTableName", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, name: ?*String) ?*Long {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(keysAndValues.?, "put", .{ self.NAME, name });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ keysAndValues }));
        if (Inheritance.call((Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ self.NAME }))).?, "compareTo", .{ name }) != 0) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("results do not match"); break :exception error.Exception; }});
        }
        const value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ self.VALUE }));
        return Inheritance.upcast(?*Long, (std.fmt.parseInt(i64, value.?.bytes, 10) catch @panic("java.lang.NumberFormatException")));
    }
    

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        { // try
            _ = Inheritance.call(&self.base, "insert", .{ values });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, INSERT });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, INSERT, e });
    }
    

    pub fn delete(self: *Self, value: ?*String) void {
        { // try
            _ = Inheritance.call(&self.base, "deleteWhere", .{ self.NAME, value });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, Inheritance.fieldPointer(self, "commonStrings").*.?.delete });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.delete, e });
    }
    

    pub fn update2(self: *Self, name: ?*String, value: ?*Long) void {
        const map: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(map.?, "put", .{ self.NAME, name });
        _ = Inheritance.call(map.?, "put", .{ self.VALUE, value.?.toString() });
        _ = Inheritance.call(self, "update", .{ map });
    }
    

    pub fn update(self: *Self, hashMap: ?*HashMap) void {
        _ = Inheritance.call(&self.base, "updateWhere", .{ self.NAME, Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ self.NAME })), hashMap });
    }
    

    pub fn createTable(self: *Self) ?*String {
        const returnStr: ?*String = Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.tableData }));
        return returnStr;
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

