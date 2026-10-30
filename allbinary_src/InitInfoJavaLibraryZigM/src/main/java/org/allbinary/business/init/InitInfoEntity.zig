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
// package org.allbinary.business.init

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
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const InitInfo = @import("org/allbinary/business/init/InitInfo.zig").InitInfo;
const InitSql = @import("org/allbinary/business/init/InitSql.zig").InitSql;

pub const InitInfoEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.InitInfoEntity";
    base: InitSql = undefined,
    NAME: ?*String = null,
    NOTHING: ?*String = null,
    tableName: ?*String = null,
    tableData: ?*String = null,
    NOT_IN_DB: ?*String = null,
    METHOD_GET: ?*String = null,
    METHOD_IS: ?*String = null,
    METHOD_ADD: ?*String = null,
    CREATED_SUCCESS: ?*String = null,
    FAILED_TO_CREATE: ?*String = null,

    fn initFields(this: *Self) void {
        this.NAME = String.literal("InitInfoEntity");
        this.NOTHING = String.literal("NOTHING");
        this.tableName = String.literal("initdata");
        
        this.NOT_IN_DB = String.literal("Not In DB");
        this.METHOD_GET = String.literal("get()");
        this.METHOD_IS = String.literal("is()");
        this.METHOD_ADD = String.literal("add()");
        this.CREATED_SUCCESS = String.literal(" Created Successfully");
        this.FAILED_TO_CREATE = String.literal("Failed to create ");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(InitSql, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.CREATE_TABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.START });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.NOTHING });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ InitInfo.getInstance().?.TESTING });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ InitInfo.getInstance().?.TESTHTMLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ InitInfo.getInstance().?.MAINPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.PRIMARY_KEY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.NOTHING });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(this, "sqlStrings").*.?.END });
        this.tableData = Inheritance.upcast(@TypeOf(this.tableData), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(this, "setTable", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn get(self: *Self) bool {
        { // try
            const keyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(keyAndValue.?, "put", .{ self.NOTHING, self.NOTHING });
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(self, "getRow", .{ keyAndValue }));
            if (hashMap != null) {
                _ = Inheritance.call(InitInfo.getInstance().?, "set", .{ hashMap });
                return true;
            } else {
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ self.NOT_IN_DB, self.NAME, self.METHOD_GET });
                }
                return false;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self.NAME, self.METHOD_GET, e });
//             }
//             return false;
    }
    

    pub fn is(self: *Self) bool {
        { // try
            const keyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(keyAndValue.?, "put", .{ self.NOTHING, self.NOTHING });
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(self, "getRow", .{ keyAndValue }));
            if (hashMap != null) {
                return true;
            } else {
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ self.NOT_IN_DB, self.NAME, self.METHOD_IS });
                }
                return false;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self.NAME, self.METHOD_IS, e });
//             }
//             return false;
    }
    

    pub fn update(self: *Self) void {
        _ = Inheritance.call(self, "updateWhere", .{ self.NOTHING, self.NOTHING, Inheritance.receiverOf(InitInfo.getInstance().?, "toHashMap").toHashMap() });
    }
    

    pub fn add(self: *Self) void {
        { // try
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(values.?, "add", .{ self.NOTHING });
            _ = Inheritance.call(values.?, "add", .{ Inheritance.receiverOf(InitInfo.getInstance().?, "getTesting").getTesting() });
            _ = Inheritance.call(values.?, "add", .{ Inheritance.receiverOf(InitInfo.getInstance().?, "getTestHtmlPath").getTestHtmlPath() });
            _ = Inheritance.call(values.?, "add", .{ Inheritance.receiverOf(InitInfo.getInstance().?, "getMainPath").getMainPath() });
            _ = Inheritance.call(self, "insert", .{ values });
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self.NAME, self.METHOD_ADD, e });
//             }
    }
    

    pub fn createTable(self: *Self) ?*String {
        if (Inheritance.call(&self.base, "createTable", .{ self.tableData })) {
            return Inheritance.upcast(?*String, String.plus(self.tableName, self.CREATED_SUCCESS));
        } else {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.FAILED_TO_CREATE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableData });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
    }
};

