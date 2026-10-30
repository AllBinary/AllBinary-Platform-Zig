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

pub const SmallDelete = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.SmallDelete";
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
    

    pub fn deleteAtStart(self: *Self, start: ?*String, end: ?*String) bool {
        { // try
            var beginIndex: i32 = 0;
            var endIndex: i32 = 0;
            beginIndex = Inheritance.call(self.string.?, "indexOf", .{ start });
            endIndex = Inheritance.call(self.string.?, "indexOf", .{ end });
            if (endIndex > beginIndex and beginIndex >= 0 and endIndex >= 0 and beginIndex < 10 and endIndex < 525) {
                const text: ?*String = Inheritance.upcast(?*String, self.string.?.substring2(endIndex, self.string.?.length()));
                const idFile: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ self.fileName });
                const idOutData: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ idFile });
                _ = Inheritance.call(idOutData.?, "writeBytes", .{ text });
                return true;
            }
            return false;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("deleteAtStart"), e });
//             }
//             return false;
    }
    

    pub fn deleteBetween(self: *Self, start: ?*String, end: ?*String, newText: ?*String) bool {
        { // try
            var beginIndex: i32 = 0;
            var endIndex: i32 = 0;
            beginIndex = Inheritance.call(self.string.?, "indexOf", .{ start });
            endIndex = Inheritance.call(self.string.?, "indexOf", .{ end });
            if (endIndex > beginIndex and beginIndex >= 0 and endIndex >= 0 and beginIndex < 50 and endIndex < 425) {
                const newStart: ?*String = Inheritance.upcast(?*String, self.string.?.substring2(0, beginIndex));
                const text: ?*String = Inheritance.upcast(?*String, self.string.?.substring2(endIndex + end.?.length(), self.string.?.length()));
                const idFile: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ self.fileName });
                const idOutData: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ idFile });
                _ = Inheritance.call(idOutData.?, "writeBytes", .{ String.plus(String.plus(newStart, newText), text) });
                return true;
            }
            return false;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("deleteAtStart"), e });
//             }
//             return false;
    }
};

