// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.io.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const SimpleFileUtil = @import("org/allbinary/logic/io/file/SimpleFileUtil.zig").SimpleFileUtil;

pub const FileUtil2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileUtil2";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    streamUtil: ?*StreamUtil = null,
    var instance: ?*FileUtil2 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileUtil2.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.streamUtil = Inheritance.upcast(?*StreamUtil, StreamUtil.getInstance());
    }
    

    pub fn getInstance() ?*FileUtil2 {
        return Inheritance.upcast(?*FileUtil2, FileUtil2.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn loadFileAsList(self: *Self, file: ?*AbFile, max: i32, byteArray1: []i8) ?*BasicArrayList {
        _ = self;
        var inputStream: ?*AbFileInputStream = null;
        { // try
            inputStream = Inheritance.callStatic(AbFileInputStream, "create1", .{ file });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD, e });
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(SimpleFileUtil.getInstance().?, "loadFileAsList", .{ inputStream, max, byteArray1 }));
    }
};

