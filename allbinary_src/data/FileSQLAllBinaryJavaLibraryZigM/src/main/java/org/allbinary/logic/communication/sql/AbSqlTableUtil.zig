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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
// const ResultSet = @import("java/sql/ResultSet.zig").ResultSet;
// const ResultSetMetaData = @import("java/sql/ResultSetMetaData.zig").ResultSetMetaData;
const Calendar = @import("java/util/Calendar.zig").Calendar;
const Portion = @import("org/allbinary/business/installer/Portion.zig").Portion;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;
const BufferedLineReader = @import("org/allbinary/logic/io/BufferedLineReader.zig").BufferedLineReader;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbSqlTable = @import("org/allbinary/logic/communication/sql/AbSqlTable.zig").AbSqlTable;
const SqlStrings = @import("org/allbinary/logic/communication/sql/SqlStrings.zig").SqlStrings;
const Long = @import("java/lang/Long.zig").Long;

pub const AbSqlTableUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlTableUtil";
    logUtil: ?*LogUtil = null,
    EXTENSION: ?*String = null,
    END: ?*String = null,
    SAVING_BACKUP_PATH: ?*String = null,
    FILE_LABEL: ?*String = null,
    METHOD_RESTORE_TABLE: ?*String = null,
    METHOD_BACKUP_TABLE: ?*String = null,
    METHOD_BACKUP_FILE: ?*String = null,
    METHOD_GET_OUTPUT_STREAM: ?*String = null,
    TABLE_CREATION_SUCCESS: ?*String = null,
    DROPPED_SUCCESS: ?*String = null,
    SAVING: ?*String = null,
    APPENDING: ?*String = null,
    TABLE_LABEL: ?*String = null,
    BACKUP_SUCCESS: ?*String = null,
    ERROR_CREATING: ?*String = null,
    TOTAL_LABEL: ?*String = null,
    SECTION_LABEL: ?*String = null,
    DASH: ?*String = null,
    PORTION_RESTORED: ?*String = null,
    specialCharArray: []u16 = &.{},
    NEW_LINE: ?*String = null,
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
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.EXTENSION = String.literal(".adb");
        this.END = String.literal("')\n");
        this.SAVING_BACKUP_PATH = String.literal("Saving Backup: Path: ");
        this.FILE_LABEL = String.literal(" File: ");
        this.METHOD_RESTORE_TABLE = String.literal("restoreTable()");
        this.METHOD_BACKUP_TABLE = String.literal("backupTable()");
        this.METHOD_BACKUP_FILE = String.literal("backupFile()");
        this.METHOD_GET_OUTPUT_STREAM = String.literal("getOutputStream()");
        this.TABLE_CREATION_SUCCESS = String.literal("Table Creation Successful: ");
        this.DROPPED_SUCCESS = String.literal(" Dropped Successfully");
        this.SAVING = String.literal("Saving: ");
        this.APPENDING = String.literal("Appending: ");
        this.TABLE_LABEL = String.literal("Table: ");
        this.BACKUP_SUCCESS = String.literal(" Backup Success");
        this.ERROR_CREATING = String.literal("Error Creating: ");
        this.TOTAL_LABEL = String.literal(" Total: ");
        this.SECTION_LABEL = String.literal(" Section: ");
        this.DASH = String.literal(" - ");
        this.PORTION_RESTORED = String.literal(" Portion Restored");
        this.specialCharArray = @constCast(&[_]u16{ '\n', '\f', '\r' })[0..];
        this.NEW_LINE = String.literal("\\n");
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
    

    pub fn getOutputStream(self: *Self, backupPath: ?*String, tableName: ?*String) ?*OutputStream {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const fileName: ?*String = Inheritance.upcast(?*String, String.plus(tableName, self.EXTENSION));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.SAVING, tableName), self, self.METHOD_GET_OUTPUT_STREAM });
            }
            const backupFilePath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ backupPath, fileName });
            const backupFile_: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ backupFilePath }));
            if (backupFile_.?.exists()) {
                _ = Inheritance.call(self, "backupFile", .{ backupFilePath, backupPath, tableName });
                _ = backupFile_.?.delete();
            }
            _ = backupFile_.?.createNewFile();
            const outputStream: ?*OutputStream = Inheritance.upcast(?*OutputStream, Inheritance.callStatic(AbFileOutputStream, "create1", .{ backupFile_ }));
            return outputStream;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Create File"), self, self.METHOD_GET_OUTPUT_STREAM, e });
//             }
//             return null;
    }
    

    pub fn backupFile(self: *Self, path: ?*AbPath, backupPath: ?*String, tableName: ?*String) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const timeLong: ?*Long = Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() });
            const time: ?*String = Inheritance.upcast(?*String, String.valueOf(timeLong.?));
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const fileName: ?*String = Inheritance.upcast(?*String, String.plus(tableName, self.EXTENSION));
            _ = Inheritance.call(stringBuffer.?, "append", .{ backupPath });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
            _ = Inheritance.call(stringBuffer.?, "append", .{ time });
            const backupAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create1", .{ Object.toString(Object.of(stringBuffer)) });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.SAVING_BACKUP_PATH });
                _ = Inheritance.call(stringBuffer.?, "append", .{ backupAbPath.?.toFileSystemString() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.FILE_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_BACKUP_FILE });
            }
            _ = Inheritance.callStatic(Directory, "create", .{ backupAbPath });
            const backupFileBak: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ backupAbPath.?.toFileSystemString() }));
            _ = backupFileBak.?.createNewFile();
            _ = Inheritance.call(FileUtil.getInstance().?, "copy", .{ path, backupAbPath });
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.METHOD_BACKUP_FILE, e });
//             }
//             return false;
    }
    

    pub fn convertNewLines(self: *Self, value: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        var index: i32 = 0;
        var lastIndex: i32 = 0;
        while (index < value.?.length()) {
            index = value.?.indexOf2(self.specialCharArray[@intCast(0)], lastIndex);
            if (index != -1) {
                const nextLine: ?*String = Inheritance.upcast(?*String, value.?.substring2(lastIndex, index - 1));
                _ = Inheritance.call(stringBuffer.?, "append", .{ nextLine });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.NEW_LINE });
                lastIndex = index + 1;
            } else {
                break;
            }
        }
        if (lastIndex < value.?.length()) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ value.?.substring2(lastIndex, value.?.length()) });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn backupTable(self: *Self, abSqlTable: ?*AbSqlTable) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const tableName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(abSqlTable.?, "getTableName").getTableName());
        { // try
            const count: i32 = 0; _ = count;
            const sqlStatement: ?*String = Inheritance.upcast(?*String, String.plus(self.sqlStrings.?.SELECT_ALL_FROM, tableName));
            const path: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "getMainPath").getMainPath() + PATH_GLOBALS.getInstance().?.BACKUP_PATH);
            if (!Inheritance.callStatic(Directory, "create", .{ Inheritance.callStatic(AbPath, "create1", .{ path }) })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.ERROR_CREATING, path), self, self.METHOD_BACKUP_TABLE });
                }
            }
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(abSqlTable.?, "executeSQLStatement", .{ sqlStatement }));
            const rsmd: ?*ResultSetMetaData = Inheritance.upcast(?*ResultSetMetaData, rset.?.getMetaData());
            const colNum: i32 = rsmd.?.getColumnCount();
            const QUERY_START: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(std.ArrayList(u8).init(allocator), "append", .{ self.sqlStrings.?.INSERT_INTO }).?, "append", .{ tableName }).?, "append", .{ self.sqlStrings.?.VALUES }))));
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const outputStream: ?*OutputStream = Inheritance.upcast(?*OutputStream, Inheritance.call(self, "getOutputStream", .{ path, tableName }));
            while (rset.?.next()) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ QUERY_START });
                {
                    var i: i32 = 1;
                    while (i < colNum) : (i += 1) {
                    const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(rset.?, "getString", .{ i }));
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "convertNewLines", .{ value }) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.SINGLE_QUOTE_COMMA_SEP });
                    }
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(rset.?, "getString", .{ colNum }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.END });
                const sqlStatementLine: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.APPENDING, sqlStatementLine), self, self.METHOD_BACKUP_TABLE });
                }
                _ = Inheritance.call(outputStream.?, "write", .{ sqlStatementLine.?.getBytes() });
            }
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ outputStream });
            return Inheritance.upcast(?*String, String.plus(String.plus(self.TABLE_LABEL, tableName), self.BACKUP_SUCCESS));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Backup Table Failed\nSQL Statement"), self, self.METHOD_BACKUP_TABLE, e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(self.TABLE_LABEL, tableName), String.literal(" Backup Failed")));
    }
    

    pub fn restoreTable(self: *Self, abSqlTable: ?*AbSqlTable, portion: ?*Portion) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const tableName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(abSqlTable.?, "getTableName").getTableName());
        { // try
            const path: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "getMainPath").getMainPath() + PATH_GLOBALS.getInstance().?.BACKUP_PATH);
            const current: i32 = Inheritance.receiverOf(portion.?.getCurrent().?, "intValue").intValue();
            if (current == 0) {
                if (Inheritance.callStatic(Directory, "create", .{ Inheritance.callStatic(AbPath, "create1", .{ path }) })) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.ERROR_CREATING, path), self, self.METHOD_RESTORE_TABLE });
                    }
                }
            }
            const backupFile_: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ path, String.plus(tableName, self.EXTENSION) }));
            const bufferedLineReader: ?*BufferedLineReader = Inheritance.callStatic(BufferedLineReader, "create1", .{ backupFile_ });
            const size: i64 = bufferedLineReader.?.getSize();
            const section: i64 = @divTrunc(size, Inheritance.receiverOf(portion.?.getTotal().?, "intValue").intValue()) + 1;
            const start: i64 = section * @as(i64, @intCast(current));
            var end: i64 = start + section;
            if (end > size) {
                end = size;
            }
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.TOTAL_LABEL });
            _ = Inheritance.call(stringBuffer.?, "append", .{ size });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.SECTION_LABEL });
            _ = Inheritance.call(stringBuffer.?, "append", .{ start });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.DASH });
            _ = Inheritance.call(stringBuffer.?, "append", .{ end });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_RESTORE_TABLE });
            }
            _ = Inheritance.call(bufferedLineReader.?, "readUpToLines", .{ start });
            var line: ?*String = Inheritance.upcast(?*String, self.stringUtil.?.EMPTY_STRING);
            while (bufferedLineReader.?.getCurrent() < end and (value_N73822: { line = Inheritance.upcast(@TypeOf(line), bufferedLineReader.?.readLine()); break :value_N73822 line; }) != null) {
                if (line.?.length() > 1) {
                    _ = Inheritance.call(abSqlTable.?, "executeSQLStatement", .{ line });
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.TABLE_LABEL });
            _ = Inheritance.call(stringBuffer.?, "append", .{ tableName });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.PORTION_RESTORED });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Restore Table Failed\nSQL Statement"), self, self.METHOD_RESTORE_TABLE, e });
//             }
//             const stringBuffer: ?*StringMaker = StringMaker.create();
//             _ = Inheritance.call(stringBuffer.?, "append", .{ self.TABLE_LABEL });
//             _ = Inheritance.call(stringBuffer.?, "append", .{ tableName });
//             _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Restoration Failed") });
//             return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

