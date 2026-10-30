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
// package org.allbinary.logic.visual.transform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const StringBufferInputStream = @import("java/io/StringBufferInputStream.zig").StringBufferInputStream;
// const URIResolver = @import("javax/xml/transform/URIResolver.zig").URIResolver;
// const StreamSource = @import("javax/xml/transform/stream/StreamSource.zig").StreamSource;
const XslHelper = @import("org/allbinary/data/tree/dom/XslHelper.zig").XslHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectConfigGenerator = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator.zig").TransformInfoObjectConfigGenerator;
const TransformInfoObjectConfigGeneratorFactory = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactory.zig").TransformInfoObjectConfigGeneratorFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicTransformerInterface = @import("org/allbinary/logic/visual/transform/BasicTransformerInterface.zig").BasicTransformerInterface;

pub const AbTransformer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.AbTransformer";
    pub const java_interfaces = .{ BasicTransformerInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    inputStream: ?*InputStream = null,
    uriResolver: ?*URIResolver = null,
    // Implements BasicTransformerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.inputStream = null;
        this.uriResolver = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        return this;
    }
    

    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return self.transformInfoInterface;
    }
    

    pub fn setInputStream(self: *Self, inputStream: ?*InputStream) void {
        self.inputStream = inputStream;
    }
    

    pub fn setURIResolver(self: *Self, uriResolver: ?*URIResolver) void {
        self.uriResolver = uriResolver;
    }
    

    pub fn getInputStream(self: *Self) ?*InputStream {
        return self.inputStream;
    }
    

    pub fn getURIResolver(self: *Self) ?*URIResolver {
        return self.uriResolver;
    }
    

    pub fn getStreamSource(self: *Self) ?*StreamSource {
        return Inheritance.callStatic(StreamSource, "create1", .{ self.getInputStream() });
    }
    

    // throws Exception
    pub fn translate(self: *Self, xmlDocumentStr: ?*String) ?*String {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XMLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("xml: \n"), xmlDocumentStr), self, String.literal("translate(String xmlDocumentStr)") });
            }
            if (self.getURIResolver() == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No URIResolver"); break :exception error.Exception; }});
            }
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(XslHelper.getInstance().?, "translate", .{ self.getURIResolver(), Inheritance.callStatic(StreamSource, "create1", .{ self.getInputStream() }), Inheritance.callStatic(StreamSource, "create1", .{ Inheritance.callStatic(StringBufferInputStream, "create1", .{ xmlDocumentStr }) }) }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XSLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("translated xml: "), result), self, String.literal("translate(String xmlDocumentStr)") });
            }
            const transformInfoObjectConfigGeneratorInterface: ?*TransformInfoObjectConfigGenerator = Inheritance.upcast(?*TransformInfoObjectConfigGenerator, Inheritance.call(TransformInfoObjectConfigGeneratorFactory.getInstance().?, "getInstance", .{ self.getTransformInfoInterface() }));
            return Inheritance.upcast(?*String, Inheritance.call(transformInfoObjectConfigGeneratorInterface.?, "process", .{ result }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.receiver(self.transformInfoInterface.?, "log").log(), self, String.literal("translate(document)"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

