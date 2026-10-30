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
// package org.allbinary.data.tables.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const LogDbInitInfo = @import("org/allbinary/business/init/db/LogDbInitInfo.zig").LogDbInitInfo;
const AbeHttpRequestInfoData = @import("org/allbinary/logic/communication/http/request/AbeHttpRequestInfoData.zig").AbeHttpRequestInfoData;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogTableEntityInterface = @import("org/allbinary/data/tables/log/LogTableEntityInterface.zig").LogTableEntityInterface;

pub const LogTableEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.log.LogTableEntity";
    pub const java_interfaces = .{ LogTableEntityInterface };
    base: AbSqlBean = undefined,
    tableName: ?*String = null,
    // Implements LogTableEntityInterface

    fn initFields(this: *Self) void {
        this.tableName = String.literal("log");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ LogDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const abeHttpRequestInfoData: ?*AbeHttpRequestInfoData = Inheritance.upcast(?*AbeHttpRequestInfoData, AbeHttpRequestInfoData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE }).?, "append", .{ self.tableName }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ abeHttpRequestInfoData.?.HTTP_USER_AGENT }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ abeHttpRequestInfoData.?.REMOTE_HOST }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ abeHttpRequestInfoData.?.REMOTE_ADDRESS }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ abeHttpRequestInfoData.?.REQUEST_FILE_PATH }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ abeHttpRequestInfoData.?.REMOTE_PORT }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_INT_UNSIGNED_NOT_NULL }).?, "append", .{ EntryData.getInstance().?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
};

