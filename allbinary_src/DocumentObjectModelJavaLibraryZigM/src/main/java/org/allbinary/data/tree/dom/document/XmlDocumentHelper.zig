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
// package org.allbinary.data.tree.dom.document

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const StringReader = @import("java/io/StringReader.zig").StringReader;
// const StringWriter = @import("java/io/StringWriter.zig").StringWriter;
// const Writer = @import("java/io/Writer.zig").Writer;
// const DocumentBuilderFactory = @import("javax/xml/parsers/DocumentBuilderFactory.zig").DocumentBuilderFactory;
// const OutputKeys = @import("javax/xml/transform/OutputKeys.zig").OutputKeys;
// const Transformer = @import("javax/xml/transform/Transformer.zig").Transformer;
// const TransformerFactory = @import("javax/xml/transform/TransformerFactory.zig").TransformerFactory;
// const DOMSource = @import("javax/xml/transform/dom/DOMSource.zig").DOMSource;
// const StreamResult = @import("javax/xml/transform/stream/StreamResult.zig").StreamResult;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const CharacterSetData = @import("org/allbinary/logic/java/characters/CharacterSetData.zig").CharacterSetData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const InputSource = @import("org/xml/sax/InputSource.zig").InputSource;

pub const XmlDocumentHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.document.XmlDocumentHelper";
    logUtil: ?*LogUtil = null,
    INDENT_NUMBER: ?*String = null,
    transformer: ?*Transformer = null,
    var instance: ?*XmlDocumentHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = XmlDocumentHelper.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.INDENT_NUMBER = String.literal("indent-number");
        this.transformer = null;
    }
    

    pub fn getInstance() ?*XmlDocumentHelper {
        return Inheritance.upcast(?*XmlDocumentHelper, XmlDocumentHelper.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ 4, true });
        return this;
    }
    

    pub fn init(self: *Self, indent: i32, ignoreDeclaration: bool) void {
        { // try
            const booleanFactory: ?*BooleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
            const transformerFactory: ?*TransformerFactory = Inheritance.upcast(?*TransformerFactory, TransformerFactory.newInstance());
            _ = Inheritance.call(transformerFactory.?, "setAttribute", .{ self.INDENT_NUMBER, indent });
            self.transformer = Inheritance.upcast(@TypeOf(self.transformer), transformerFactory.?.newTransformer());
            _ = Inheritance.call(self.transformer.?, "setOutputProperty", .{ OutputKeys.ENCODING, CharacterSetData.getInstance().?.UTF_8 });
            _ = Inheritance.call(self.transformer.?, "setOutputProperty", .{ OutputKeys.OMIT_XML_DECLARATION, (if (ignoreDeclaration) booleanFactory.?.YES else booleanFactory.?.NO) });
            _ = Inheritance.call(self.transformer.?, "setOutputProperty", .{ OutputKeys.INDENT, booleanFactory.?.YES });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.INIT, e });
    }
    

    // throws Exception
    pub fn format(self: *Self, xmlString: ?*String) ?*String {
        const src: ?*InputSource = Inheritance.callStatic(InputSource, "create1", .{ Inheritance.callStatic(StringReader, "create1", .{ xmlString }) });
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.call(Inheritance.receiverOf(DocumentBuilderFactory.newInstance().?, "newDocumentBuilder").newDocumentBuilder().?, "parse", .{ src }));
        const out: ?*Writer = Inheritance.upcast(?*Writer, StringWriter.create());
        _ = Inheritance.call(self.transformer.?, "transform", .{ Inheritance.callStatic(DOMSource, "create1", .{ document }), Inheritance.callStatic(StreamResult, "create1", .{ out }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(out)));
    }
    

    // throws Exception
    pub fn toString(document: ?*Document) ?*String {
        { // try
            const domSource: ?*DOMSource = Inheritance.callStatic(DOMSource, "create1", .{ document });
            const byteArrayOutputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            const streamResult: ?*StreamResult = Inheritance.callStatic(StreamResult, "create1", .{ byteArrayOutputStream });
            const copyTransformerFactory: ?*TransformerFactory = Inheritance.upcast(?*TransformerFactory, TransformerFactory.newInstance());
            const copyTransformer: ?*Transformer = Inheritance.upcast(?*Transformer, copyTransformerFactory.?.newTransformer());
            _ = Inheritance.call(copyTransformer.?, "transform", .{ domSource, streamResult });
            return Inheritance.upcast(?*String, Object.toString(Object.of(byteArrayOutputStream)));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

