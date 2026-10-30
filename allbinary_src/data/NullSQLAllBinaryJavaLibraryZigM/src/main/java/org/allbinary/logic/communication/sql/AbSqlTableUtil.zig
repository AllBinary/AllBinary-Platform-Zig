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
// package org.allbinary.logic.communication.sql

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Portion = @import("org/allbinary/business/installer/Portion.zig").Portion;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AbSqlTable = @import("org/allbinary/logic/communication/sql/AbSqlTable.zig").AbSqlTable;
const SqlStrings = @import("org/allbinary/logic/communication/sql/SqlStrings.zig").SqlStrings;

pub const AbSqlTableUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlTableUtil";
    TABLE_LABEL: ?*String = null,
    stringUtil: ?*StringUtil = null,
    commonStrings: ?*CommonStrings = null,
    commonSeps: ?*CommonSeps = null,
    sqlStrings: ?*SqlStrings = null,
    var instance: ?*AbSqlTableUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbSqlTableUtil.create();
    }

    fn initFields(this: *Self) void {
        this.TABLE_LABEL = String.literal("Table: ");
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.sqlStrings = Inheritance.upcast(?*SqlStrings, SqlStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AbSqlTableUtil {
        return Inheritance.upcast(?*AbSqlTableUtil, AbSqlTableUtil.instance);
    }
    

    pub fn backupTable(self: *Self, abSqlTable: ?*AbSqlTable) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const tableName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(abSqlTable.?, "getTableName").getTableName());
        return Inheritance.upcast(?*String, String.plus(String.plus(self.TABLE_LABEL, tableName), String.literal(" Backup Failed")));
    }
    

    pub fn restoreTable(self: *Self, abSqlTable: ?*AbSqlTable, portion: ?*Portion) ?*String {
        _ = portion;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const tableName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(abSqlTable.?, "getTableName").getTableName());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.TABLE_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Restoration Failed") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

