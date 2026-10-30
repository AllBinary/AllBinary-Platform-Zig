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
// package org.allbinary.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedReader = @import("java/io/BufferedReader.zig").BufferedReader;
// const BufferedWriter = @import("java/io/BufferedWriter.zig").BufferedWriter;
const File = @import("java/io/File.zig").File;
// const FileReader = @import("java/io/FileReader.zig").FileReader;
// const FileWriter = @import("java/io/FileWriter.zig").FileWriter;
// const RandomAccessFile = @import("java/io/RandomAccessFile.zig").RandomAccessFile;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const System = @import("java/lang/System.zig").System;

pub const FileLog = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.log.FileLog";
    var stringUtil: ?*StringUtil = undefined;
    const logLength: i64 = 33000000;
    const logPath: ?*String = String.literal("g:\\log\\");
    var extension: ?*String = undefined;
    var fileName: ?*String = undefined;
    var backupFileName: ?*String = undefined;
    const ORG_ALLBINARY: ?*String = String.literal("org.allbinary: ");
    var firstTime: bool = true;
    var logFile: ?*File = undefined;
    var logFileBak: ?*File = null;
    var fileOut: ?*BufferedWriter = null;
    var backupIndex: i32 = 0;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        extension = Inheritance.callStatic(String, "create1", .{ String.literal("dat") });
        fileName = Inheritance.callStatic(String, "create1", .{ String.plus(String.literal("log."), FileLog.extension) });
        backupFileName = Inheritance.upcast(?*String, Inheritance.call(FileLog.fileName.?, "concat", .{ String.literal(".bak") }));
        logFile = Inheritance.callStatic(File, "create2", .{ FileLog.logPath, FileLog.fileName });
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn createLogFile() bool {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            FileLog.logFile = Inheritance.upcast(@TypeOf(FileLog.logFile), Inheritance.callStatic(File, "create2", .{ FileLog.logPath, FileLog.fileName }));
            if (!FileLog.firstTime) {
                FileLog.fileOut = Inheritance.upcast(@TypeOf(FileLog.fileOut), Inheritance.callStatic(BufferedWriter, "create1", .{ Inheritance.callStatic(FileWriter, "create1", .{ FileLog.logFile }) }));
            } else {
                FileLog.firstTime = false;
                const raFile: ?*RandomAccessFile = Inheritance.callStatic(RandomAccessFile, "create2", .{ FileLog.logFile, String.literal("rw") });
                _ = Inheritance.call(raFile.?, "seek", .{ raFile.?.length() });
                FileLog.fileOut = Inheritance.upcast(@TypeOf(FileLog.fileOut), Inheritance.callStatic(BufferedWriter, "create1", .{ Inheritance.callStatic(FileWriter, "create1", .{ raFile.?.getFD() }) }));
            }
            const canWrite: bool = Inheritance.receiverOf(FileLog.logFile.?, "canWrite").canWrite();
            return canWrite;
        }
        // catch (Exception e):
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("Error Creating Log: "), e))});
//             return false;
    }
    

    pub fn createLogFileBackup() bool {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            const stringMaker: ?*StringMaker = StringMaker.create();
            FileLog.logFileBak = Inheritance.upcast(@TypeOf(FileLog.logFileBak), Inheritance.callStatic(File, "create2", .{ FileLog.logPath, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ FileLog.backupFileName }).?, "append", .{ CommonSeps.getInstance().?.PERIOD }).?, "appendint", .{ FileLog.backupIndex }))) }));
            while (Inheritance.receiverOf(FileLog.logFileBak.?, "isFile").isFile()) {
                FileLog.backupIndex += 1;
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                FileLog.logFileBak = Inheritance.upcast(@TypeOf(FileLog.logFileBak), Inheritance.callStatic(File, "create2", .{ FileLog.logPath, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ FileLog.backupFileName }).?, "append", .{ CommonSeps.getInstance().?.PERIOD }).?, "appendint", .{ FileLog.backupIndex }))) }));
            }
            var line: ?*String = String.create();
            const tmpOut: ?*BufferedWriter = Inheritance.callStatic(BufferedWriter, "create1", .{ Inheritance.callStatic(FileWriter, "create1", .{ FileLog.logFileBak }) });
            const tmpIn: ?*BufferedReader = Inheritance.callStatic(BufferedReader, "create1", .{ Inheritance.callStatic(FileReader, "create1", .{ FileLog.logFile }) });
            while ((value_N67683: { line = Inheritance.upcast(@TypeOf(line), tmpIn.?.readLine()); break :value_N67683 line; }) != null) {
                _ = Inheritance.call(tmpOut.?, "write", .{ line, 0, line.?.length() });
                _ = tmpOut.?.newLine();
            }
            _ = tmpOut.?.flush();
            _ = tmpOut.?.close();
            _ = tmpIn.?.close();
            _ = Inheritance.receiverOf(FileLog.logFile.?, "delete").delete();
            return true;
        }
        // catch (Exception e):
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("Error Creating Backup: "), e))});
//             return false;
    }
    

    pub fn put(specialMessage: ?*String, anyType: ?Object, functionName: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*String, Inheritance.callStatic(FileLog, "put", .{ specialMessage, anyType, functionName, null }));
    }
    

    pub fn put4(specialMessageParameter: ?*String, anyType: ?Object, functionNameParameter: ?*String, exception: ?anyerror) ?*String {
        var specialMessage = specialMessageParameter;
        var functionName = functionNameParameter;
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            if (FileLog.firstTime == true) {
                _ = FileLog.createLogFileBackup();
                if (FileLog.createLogFile() == false) {
                    return Inheritance.callStatic(String, "create1", .{ String.literal("Log File Creation Error") });
                }
            }
            const length: i64 = @as(i64, @intCast(Inheritance.receiverOf(FileLog.logFile.?, "length").length()));
            if (length > FileLog.logLength) {
                if (!(FileLog.createLogFileBackup()) or FileLog.createLogFile() == false) {
                    return Inheritance.callStatic(String, "create1", .{ String.literal("Couldn't Create a Backup file") });
                }
            }
            var className: ?*String = Inheritance.callStatic(String, "create1", .{ FileLog.stringUtil.?.NULL_STRING });
            if (functionName == null) {
                functionName = Inheritance.callStatic(String, "create1", .{ FileLog.stringUtil.?.NULL_STRING });
            }
            if (specialMessage == null) {
                specialMessage = Inheritance.callStatic(String, "create1", .{ FileLog.stringUtil.?.NULL_STRING });
            }
            if (String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) != null) {
                className = Inheritance.callStatic(String, "create1", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) });
            }
            const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "get", .{ className, functionName, specialMessage, exception }));
            _ = Inheritance.call(FileLog.fileOut.?, "write", .{ message, 0, message.?.length() });
            _ = Inheritance.receiverOf(FileLog.fileOut.?, "newLine").newLine();
            _ = Inheritance.receiverOf(FileLog.fileOut.?, "flush").flush();
            return Inheritance.callStatic(String, "create1", .{ String.plus(FileLog.ORG_ALLBINARY, message) });
        }
        // catch (Exception e):
//             return Inheritance.callStatic(String, "create1", .{ String.plus(String.literal("Error: "), e) });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn put(specialMessage: ?*String, className: ?*String, functionName: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*String, Inheritance.callStatic(FileLog, "put", .{ specialMessage, className, functionName, null }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn put4(specialMessageParameter: ?*String, className: ?*String, functionNameParameter: ?*String, exception: ?anyerror) ?*String {
        var specialMessage = specialMessageParameter;
        var functionName = functionNameParameter;
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            if (FileLog.firstTime == true) {
                _ = FileLog.createLogFileBackup();
                if (FileLog.createLogFile() == false) {
                    return Inheritance.callStatic(String, "create1", .{ String.literal("Log File Creation Error") });
                }
            }
            const length: i64 = @as(i64, @intCast(Inheritance.receiverOf(FileLog.logFile.?, "length").length()));
            if (length > FileLog.logLength) {
                if (!(FileLog.createLogFileBackup()) or FileLog.createLogFile() == false) {
                    return Inheritance.callStatic(String, "create1", .{ String.literal("Couldn't Create a Backup file") });
                }
            }
            if (functionName == null) {
                functionName = Inheritance.callStatic(String, "create1", .{ FileLog.stringUtil.?.NULL_STRING });
            }
            if (specialMessage == null) {
                specialMessage = Inheritance.callStatic(String, "create1", .{ FileLog.stringUtil.?.NULL_STRING });
            }
            const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "get", .{ className, functionName, specialMessage, exception }));
            _ = Inheritance.call(FileLog.fileOut.?, "write", .{ message, 0, message.?.length() });
            _ = Inheritance.receiverOf(FileLog.fileOut.?, "newLine").newLine();
            _ = Inheritance.receiverOf(FileLog.fileOut.?, "flush").flush();
            return Inheritance.callStatic(String, "create1", .{ String.plus(FileLog.ORG_ALLBINARY, message) });
        }
        // catch (Exception e):
//             return Inheritance.callStatic(String, "create1", .{ String.plus(String.literal("Error: "), e) });
    }
    

    pub fn getFilePath() ?*String {
        return Inheritance.upcast(?*String, FileLog.logPath + FileLog.fileName);
    }
};

