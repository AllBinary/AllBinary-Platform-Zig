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
// const DataOutputStream = @import("java/io/DataOutputStream.zig").DataOutputStream;
// const FileOutputStream = @import("java/io/FileOutputStream.zig").FileOutputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFileSystem = @import("org/allbinary/logic/io/file/AbFileSystem.zig").AbFileSystem;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const System = @import("java/lang/System.zig").System;

pub const SmallInsert = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.SmallInsert";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    fileName: ?*String = null,
    string: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
    }
    

    pub fn create1(fileName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.fileName = fileName;
        this.string = Inheritance.upcast(@TypeOf(this.string), Inheritance.call(AbFileSystem.getInstance().?, "readAsString", .{ fileName }));
        return this;
    }
    

    pub fn atBeginning(self: *Self, text: ?*String) bool {
        { // try
            const idFile: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ self.fileName });
            const idOutData: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ idFile });
            _ = Inheritance.call(idOutData.?, "writeBytes", .{ String.plus(text, self.string) });
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("insertAtBeginning"), e });
//             }
//             return false;
    }
    

    pub fn after(self: *Self, text: ?*String, after_: ?*String) bool {
        { // try
            var index: i32 = Inheritance.call(self.string.?, "indexOf", .{ after_ });
            if (index < 0) {
                _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("No such start: "), after_), String.literal(" in: ")), self.string))});
                return false;
            }
            index = index + after_.?.length();
            const start: ?*String = Inheritance.upcast(?*String, self.string.?.substring2(0, index));
            const end: ?*String = Inheritance.upcast(?*String, self.string.?.substring2(index + 1, self.string.?.length()));
            const idFile: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ self.fileName });
            const idOutData: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ idFile });
            _ = Inheritance.call(idOutData.?, "writeBytes", .{ String.plus(String.plus(start, text), end) });
            _ = idOutData.?.close();
            _ = idFile.?.close();
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("after"), e });
//             }
//             return false;
    }
    

    pub fn atEnd(self: *Self, text: ?*String) bool {
        { // try
            const idFile: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ self.fileName });
            const idOutData: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ idFile });
            _ = Inheritance.call(idOutData.?, "writeBytes", .{ String.plus(self.string, text) });
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("insertAtEnd"), e });
//             }
//             return false;
    }
};

