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
// package org.allbinary.business.installer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const FileUploadData = @import("org/allbinary/logic/communication/http/file/upload/FileUploadData.zig").FileUploadData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbIOSystem = @import("org/allbinary/logic/io/AbIOSystem.zig").AbIOSystem;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const DeleteCloud = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.DeleteCloud";
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn delete(self: *Self, prePath: ?*String, current: i32, total: i32) bool {
        { // try
            if (Inheritance.call(AbIOSystem.getInstance().?, "isType", .{ String.literal("com.vobject.appengine.java.io") })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ prePath });
                const path: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
                const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ path }));
                const fileBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(Directory.getInstance().?, "search", .{ file, true }));
                const size: i32 = fileBasicArrayList.?.size();
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Searched: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ path.?.toFileSystemString() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BasicArrayList: ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
                const portion: i32 = @divTrunc(size, total) + 1;
                const start: i32 = portion * current;
                var end: i32 = start + portion;
                if (end > size) {
                    end = size;
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Section: ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ start });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" - ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ end });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("initialize()") });
                var nextFile: ?*AbFile = null;
                {
                    var index: i32 = start;
                    while (index < end) : (index += 1) {
                    nextFile = Inheritance.cast(?*AbFile, Inheritance.call(fileBasicArrayList.?, "get", .{ index }));
                    { // try
                        if (Inheritance.call(nextFile.?.getPath().?, "indexOf", .{ FileUploadData.getInstance().?.FILE }) < 0) {
                            _ = nextFile.?.delete();
                        }
                    }
                    // catch (Exception e):
                    }
                }
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Deleted Files From Cloud"), self, String.literal("initialize()") });
            }
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Unable to copy installer files into cloud"), self, String.literal("initialize()"), e });
//             return false;
    }
};

