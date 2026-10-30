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
// package org.allbinary.data.tree.dom

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const StringBufferInputStream = @import("java/io/StringBufferInputStream.zig").StringBufferInputStream;
// const StreamSource = @import("javax/xml/transform/stream/StreamSource.zig").StreamSource;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const AbFileLocalInputStream = @import("org/allbinary/logic/io/AbFileLocalInputStream.zig").AbFileLocalInputStream;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const Document = @import("org/w3c/dom/Document.zig").Document;
const XslHelper = @import("org/allbinary/data/tree/dom/XslHelper.zig").XslHelper;

pub const SimpleTransform = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.SimpleTransform";
    xsltFilePath: ?*AbPath = null,
    dataFilePath: ?*AbPath = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(xsltFilePath: ?*AbPath, dataFilePath: ?*AbPath) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.xsltFilePath = xsltFilePath;
        this.dataFilePath = dataFilePath;
        return this;
    }
    

    // throws Exception
    pub fn transform(self: *Self) ?*String {
        const inputStream: ?*AbFileLocalInputStream = Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ self.xsltFilePath }) });
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ self.dataFilePath }) }) }));
        const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(XslHelper.getInstance().?, "translate", .{ Inheritance.callStatic(StreamSource, "create1", .{ inputStream }), Inheritance.callStatic(StreamSource, "create1", .{ Inheritance.callStatic(StringBufferInputStream, "create1", .{ Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document }) }) }) }));
        return result;
    }
};

