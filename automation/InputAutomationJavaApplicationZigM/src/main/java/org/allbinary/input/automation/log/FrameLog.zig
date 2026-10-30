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
// package org.allbinary.input.automation.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const FileOutputStream = @import("java/io/FileOutputStream.zig").FileOutputStream;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ImageOutputData = @import("org/allbinary/input/automation/ImageOutputData.zig").ImageOutputData;
const LongUtil = @import("org/allbinary/logic/java/number/LongUtil.zig").LongUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Long = @import("java/lang/Long.zig").Long;

pub const FrameLog = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.log.FrameLog";
    frame: ?*Long = null,
    infoStringBuffer: ?*StringMaker = null,
    actionsStringBuffer: ?*StringMaker = null,
    var frameBytes: []i8 = undefined;
    var info: []i8 = undefined;
    var actions: []i8 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        frameBytes = Inheritance.callStatic(String, "create1", .{ String.literal("Frame: ") }).getBytes();
        info = Inheritance.callStatic(String, "create1", .{ String.literal("Info: \n") }).getBytes();
        actions = Inheritance.callStatic(String, "create1", .{ String.literal("Actions: \n") }).getBytes();
    }

    fn initFields(this: *Self) void {
        
        this.infoStringBuffer = StringMaker.create();
        this.actionsStringBuffer = StringMaker.create();
    }
    

    pub fn create1(frame: ?*Long) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.frame = frame;
        return this;
    }
    

    pub fn addInfo(self: *Self, infoString: ?*String) void {
        _ = Inheritance.call(self.infoStringBuffer.?, "append", .{ infoString });
    }
    

    pub fn addActions(self: *Self, vectorOfStrings: ?*BasicArrayList) void {
        const size: i32 = vectorOfStrings.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self, "addAction", .{ Inheritance.cast(?*String, Inheritance.call(vectorOfStrings.?, "get", .{ index })) });
            }
        }
    }
    

    pub fn addAction(self: *Self, action: ?*String) void {
        _ = Inheritance.call(self.actionsStringBuffer.?, "append", .{ action });
        _ = Inheritance.call(self.actionsStringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        const filePathStringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ ImageOutputData.SAVE_PATH });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.callStatic(LongUtil, "fillIn", .{ String.valueOf(self.frame.?) }) });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ String.literal(".txt") });
        const filePath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(filePathStringBuffer)));
        const fileOutputStream: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ Inheritance.callStatic(File, "create1", .{ filePath }) });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ FrameLog.frameBytes });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ Object.toString(Object.of(self.getFrame())).?.getBytes() });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ '\n' });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ FrameLog.info });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ Object.toString(Object.of(self.infoStringBuffer)).?.getBytes() });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ '\n' });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ FrameLog.actions });
        _ = Inheritance.call(fileOutputStream.?, "write", .{ Object.toString(Object.of(self.actionsStringBuffer)).?.getBytes() });
        _ = fileOutputStream.?.close();
    }
    

    pub fn getFrame(self: *Self) ?*Long {
        return self.frame;
    }
};

