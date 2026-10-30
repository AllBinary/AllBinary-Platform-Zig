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
// package org.allbinary.data.tree.dom

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const StreamResult = @import("javax/xml/transform/stream/StreamResult.zig").StreamResult;
// const StreamSource = @import("javax/xml/transform/stream/StreamSource.zig").StreamSource;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const XslHelper = @import("org/allbinary/data/tree/dom/XslHelper.zig").XslHelper;

pub const AbXslHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.AbXslHelper";
    var instance: ?*AbXslHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbXslHelper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AbXslHelper {
        return Inheritance.upcast(?*AbXslHelper, AbXslHelper.instance);
    }
    

    // throws Exception
    pub fn translate(self: *Self, xslFile: ?*AbFile, xmlFile: ?*AbFile) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "translate", .{ xslFile.?.getAbsolutePath(), xmlFile.?.getAbsolutePath() }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn translate(self: *Self, xslPath: ?*AbPath, xmlPath: ?*AbPath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "translate", .{ xslPath.?.getPath(), xmlPath.?.getPath() }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn translate(self: *Self, xsltFilePath: ?*String, xmlFilePath: ?*String) ?*String {
        _ = self;
        { // try
            const outputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(XslHelper.getInstance().?, "translate", .{ Inheritance.callStatic(StreamSource, "create1", .{ xsltFilePath }), Inheritance.callStatic(StreamSource, "create1", .{ xmlFilePath }), Inheritance.callStatic(StreamResult, "create1", .{ outputStream }) }))));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

