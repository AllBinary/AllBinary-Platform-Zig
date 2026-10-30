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
// package org.allbinary.logic.io

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedWriter = @import("java/io/BufferedWriter.zig").BufferedWriter;
// const FileWriter = @import("java/io/FileWriter.zig").FileWriter;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const BufferedWriterUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.BufferedWriterUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    commonLabels: ?*CommonLabels = null,
    REMOVING_OLD: ?*String = null,
    var instance: ?*BufferedWriterUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BufferedWriterUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        this.REMOVING_OLD = String.literal("Remove old for overwriting: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BufferedWriterUtil {
        return Inheritance.upcast(?*BufferedWriterUtil, BufferedWriterUtil.instance);
    }
    

    // throws Exception
    pub fn overwrite(self: *Self, path: ?*String, data: ?*String) void {
        const abFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ path }));
        if (abFile.?.exists()) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.REMOVING_OLD, path), self, self.commonStrings.?.CREATE });
            _ = abFile.?.delete();
        } else {
            const name: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbPathData.getInstance().?, "removeNameFromPath", .{ path }));
            const abFileDirectory: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ name }));
            if (abFileDirectory.?.exists()) {
            } else {
                const stringBuilder: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringBuilder.?, "append", .{ self.commonStrings.?.CREATE }).?, "append", .{ self.commonLabels.?.COLON_SEP }).?, "append", .{ name }))), self, self.commonStrings.?.CREATE });
                const result: bool = abFileDirectory.?.mkdirs();
                _ = Inheritance.call(stringBuilder.?, "delete", .{ 0, stringBuilder.?.length() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuilder.?, "append", .{ self.commonLabels.?.RESULT_ }).?, "appendboolean", .{ result }))), self, self.commonStrings.?.CREATE });
            }
        }
        _ = Inheritance.call(self, "write", .{ abFile, data });
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn overwrite(self: *Self, abFile: ?*AbFile, data: ?*String) void {
        if (abFile.?.exists()) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.REMOVING_OLD, abFile.?.getPath()), self, self.commonStrings.?.CREATE });
            _ = abFile.?.delete();
        } else {
            const name: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbPathData.getInstance().?, "removeNameFromPath", .{ abFile.?.getAbsolutePath() }));
            const abFileDirectory: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ name }));
            if (abFileDirectory.?.exists()) {
            } else {
                const stringBuilder: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringBuilder.?, "append", .{ self.commonStrings.?.CREATE }).?, "append", .{ self.commonLabels.?.COLON_SEP }).?, "append", .{ name }))), self, self.commonStrings.?.CREATE });
                const result: bool = abFileDirectory.?.mkdirs();
                _ = Inheritance.call(stringBuilder.?, "delete", .{ 0, stringBuilder.?.length() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuilder.?, "append", .{ self.commonLabels.?.RESULT_ }).?, "appendboolean", .{ result }))), self, self.commonStrings.?.CREATE });
            }
        }
        _ = Inheritance.call(self, "write", .{ abFile, data });
    }
    

    // throws Exception
    pub fn write(self: *Self, abFile: ?*AbFile, data: ?*String) void {
        _ = self;
        const fileOut: ?*BufferedWriter = Inheritance.callStatic(BufferedWriter, "create1", .{ Inheritance.callStatic(FileWriter, "create1", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ abFile }) }) });
        _ = Inheritance.call(fileOut.?, "write", .{ data, 0, data.?.length() });
        _ = fileOut.?.newLine();
        _ = fileOut.?.flush();
    }
};

