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
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
const File = @import("java/io/File.zig").File;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
// const StringBufferInputStream = @import("java/io/StringBufferInputStream.zig").StringBufferInputStream;
// const Templates = @import("javax/xml/transform/Templates.zig").Templates;
// const Transformer = @import("javax/xml/transform/Transformer.zig").Transformer;
// const TransformerFactory = @import("javax/xml/transform/TransformerFactory.zig").TransformerFactory;
// const URIResolver = @import("javax/xml/transform/URIResolver.zig").URIResolver;
// const StreamResult = @import("javax/xml/transform/stream/StreamResult.zig").StreamResult;
// const StreamSource = @import("javax/xml/transform/stream/StreamSource.zig").StreamSource;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;

//import org.allbinary.data.tree.dom.document.DomDocumentHelper;
pub const XslHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.XslHelper";
    var instance: ?*XslHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = XslHelper.create();
    }
    

    pub fn getInstance() ?*XslHelper {
        return Inheritance.upcast(?*XslHelper, XslHelper.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn translate3(self: *Self, xsltStreamSource: ?*StreamSource, xmlStreamSource: ?*StreamSource, streamResult: ?*StreamResult) ?*OutputStream {
        _ = self;
        { // try
            const transformerFactory: ?*TransformerFactory = Inheritance.upcast(?*TransformerFactory, TransformerFactory.newInstance());
            const transformer: ?*Transformer = Inheritance.upcast(?*Transformer, Inheritance.call(transformerFactory.?, "newTransformer", .{ xsltStreamSource }));
            _ = Inheritance.call(transformer.?, "transform", .{ xmlStreamSource, streamResult });
            return Inheritance.upcast(?*OutputStream, streamResult.?.getOutputStream());
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn translate4(self: *Self, resolver: ?*URIResolver, xsltStreamSource: ?*StreamSource, xmlStreamSource: ?*StreamSource, streamResult: ?*StreamResult) ?*OutputStream {
        _ = self;
        { // try
            const tFactory: ?*TransformerFactory = Inheritance.upcast(?*TransformerFactory, TransformerFactory.newInstance());
            _ = Inheritance.call(tFactory.?, "setURIResolver", .{ resolver });
            const transformer: ?*Transformer = Inheritance.upcast(?*Transformer, Inheritance.call(tFactory.?, "newTransformer", .{ xsltStreamSource }));
            _ = Inheritance.call(transformer.?, "transform", .{ xmlStreamSource, streamResult });
            return Inheritance.upcast(?*OutputStream, streamResult.?.getOutputStream());
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn translateTemplate(self: *Self, templates: ?*Templates, xmlStreamSource: ?*StreamSource) ?*String {
        _ = self;
        { // try
            const outputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            const streamResult: ?*StreamResult = Inheritance.callStatic(StreamResult, "create1", .{ outputStream });
            _ = Inheritance.call(templates.?.newTransformer().?, "transform", .{ xmlStreamSource, streamResult });
            return Inheritance.upcast(?*String, Object.toString(Object.of(streamResult.?.getOutputStream())));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn translate(self: *Self, xsltStreamSource: ?*StreamSource, xmlDocument: ?*Document) ?*String {
        { // try
            const outputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(self, "translate", .{ xsltStreamSource, Inheritance.callStatic(StreamSource, "create1", .{ Inheritance.callStatic(StringBufferInputStream, "create1", .{ Inheritance.callStatic(XmlDocumentHelper, "toString", .{ xmlDocument }) }) }), Inheritance.callStatic(StreamResult, "create1", .{ outputStream }) }))));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn translate(self: *Self, xsltStreamSource: ?*StreamSource, xmlStreamSource: ?*StreamSource) ?*String {
        { // try
            const outputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(self, "translate", .{ xsltStreamSource, xmlStreamSource, Inheritance.callStatic(StreamResult, "create1", .{ outputStream }) }))));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn translate3(self: *Self, resolver: ?*URIResolver, xsltStreamSource: ?*StreamSource, xmlStreamSource: ?*StreamSource) ?*String {
        { // try
            const outputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(self, "translate", .{ resolver, xsltStreamSource, xmlStreamSource, Inheritance.callStatic(StreamResult, "create1", .{ outputStream }) }))));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn @"export"(self: *Self, outputFile: ?*File, xsltFilePath: ?*String, xmlDocument: ?*Document) void {
        { // try
            _ = outputFile.?.createNewFile();
            _ = Inheritance.call(self, "translate", .{ Inheritance.callStatic(StreamSource, "create1", .{ xsltFilePath }), Inheritance.callStatic(StreamSource, "create1", .{ Inheritance.callStatic(StringBufferInputStream, "create1", .{ Inheritance.callStatic(XmlDocumentHelper, "toString", .{ xmlDocument }) }) }), Inheritance.callStatic(StreamResult, "create1", .{ outputFile }) });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

