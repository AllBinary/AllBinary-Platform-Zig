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
// package org.allbinary.data.tree.dom.document

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const StringBufferInputStream = @import("java/io/StringBufferInputStream.zig").StringBufferInputStream;
// const DocumentBuilder = @import("javax/xml/parsers/DocumentBuilder.zig").DocumentBuilder;
// const DocumentBuilderFactory = @import("javax/xml/parsers/DocumentBuilderFactory.zig").DocumentBuilderFactory;
const Document = @import("org/w3c/dom/Document.zig").Document;
const System = @import("java/lang/System.zig").System;

pub const DomDocumentHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.document.DomDocumentHelper";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init() void {
        _ = Inheritance.callStatic(System, "setProperty", .{ String.literal("jdk.xml.maxElementDepth"), String.literal("0") });
        _ = Inheritance.callStatic(System, "setProperty", .{ String.literal("jdk.xml.xpathExprOpLimit"), String.literal("0") });
        _ = Inheritance.callStatic(System, "setProperty", .{ String.literal("jdk.xml.xpathTotalOpLimit"), String.literal("0") });
        const LIMIT: ?*String = String.literal("500000");
        _ = Inheritance.callStatic(System, "setProperty", .{ String.literal("jdk.xml.maxGeneralEntitySizeLimit"), LIMIT });
        _ = Inheritance.callStatic(System, "setProperty", .{ String.literal("jdk.xml.totalEntitySizeLimit"), LIMIT });
    }
    

    pub fn create() ?*Document {
        { // try
            const factory: ?*DocumentBuilderFactory = Inheritance.upcast(?*DocumentBuilderFactory, DocumentBuilderFactory.newInstance());
            const builder: ?*DocumentBuilder = Inheritance.upcast(?*DocumentBuilder, factory.?.newDocumentBuilder());
            const document: ?*Document = Inheritance.upcast(?*Document, builder.?.newDocument());
            return document;
        }
        // catch (Exception e):
//             return null;
    }
    

    // throws Exception
    pub fn create1(inputStream: ?*InputStream) ?*Document {
        { // try
            const factory: ?*DocumentBuilderFactory = Inheritance.upcast(?*DocumentBuilderFactory, DocumentBuilderFactory.newInstance());
            const builder: ?*DocumentBuilder = Inheritance.upcast(?*DocumentBuilder, factory.?.newDocumentBuilder());
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.call(builder.?, "parse", .{ inputStream }));
            return document;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn create1(xmlString: ?*String) ?*Document {
        { // try
            const factory: ?*DocumentBuilderFactory = Inheritance.upcast(?*DocumentBuilderFactory, DocumentBuilderFactory.newInstance());
            const builder: ?*DocumentBuilder = Inheritance.upcast(?*DocumentBuilder, factory.?.newDocumentBuilder());
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.call(builder.?, "parse", .{ Inheritance.callStatic(StringBufferInputStream, "create1", .{ xmlString }) }));
            return document;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

