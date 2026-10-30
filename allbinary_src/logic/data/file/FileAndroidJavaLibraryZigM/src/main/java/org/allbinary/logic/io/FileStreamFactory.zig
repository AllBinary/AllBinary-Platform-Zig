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
const Context = @import("android/content/Context.zig").Context;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;

pub const FileStreamFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.FileStreamFactory";
    context: ?Object = null,
    var SINGLETON: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn getInstance() ?*FileStreamFactory {
        if (Object.same(FileStreamFactory.SINGLETON, NullUtil.getInstance().?.NULL_OBJECT)) {
            FileStreamFactory.SINGLETON = Inheritance.upcast(@TypeOf(FileStreamFactory.SINGLETON), Inheritance.callStatic(FileStreamFactory, "create1", .{ Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext() }));
        }
        return Inheritance.cast(?*FileStreamFactory, FileStreamFactory.SINGLETON);
    }
    

    pub fn create1(context: ?*Context) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.context = context;
        return this;
    }
    

    // throws Exception
    pub fn getFileInputStreamInstance(self: *Self, path: ?*String, fileName: ?*String) ?*AbFileInputStream {
        _ = path;
        return Inheritance.callStatic(AbFileInputStream, "create1", .{ Inheritance.call(self.getContext().?, "openFileInput", .{ fileName }) });
    }
    

    // throws Exception
    pub fn getFileOutputStreamInstance(self: *Self, path: ?*String, fileName: ?*String) ?*AbFileOutputStream {
        _ = path;
        const context: ?*Context = Inheritance.upcast(?*Context, self.getContext());
        _ = Inheritance.call(context.?, "deleteFile", .{ fileName });
        return Inheritance.callStatic(AbFileOutputStream, "create1", .{ Inheritance.call(context.?, "openFileOutput", .{ fileName, 0 }) });
    }
    

    // throws Exception
    pub fn delete(self: *Self, path: ?*String, fileName: ?*String) void {
        _ = path;
        _ = Inheritance.call(self.getContext().?, "deleteFile", .{ fileName });
    }
    

    pub fn getContext(self: *Self) ?*Context {
        return Inheritance.cast(?*Context, self.context);
    }
};

