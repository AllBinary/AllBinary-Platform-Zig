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
// const Source = @import("javax/xml/transform/Source.zig").Source;
// const TransformerException = @import("javax/xml/transform/TransformerException.zig").TransformerException;
// const URIResolver = @import("javax/xml/transform/URIResolver.zig").URIResolver;
// const StreamSource = @import("javax/xml/transform/stream/StreamSource.zig").StreamSource;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbFilePath = @import("org/allbinary/logic/io/path/AbFilePath.zig").AbFilePath;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoTemplateData = @import("org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData.zig").TransformInfoTemplateData;
const BasicUriResolver = @import("org/allbinary/data/tree/dom/BasicUriResolver.zig").BasicUriResolver;
const URIResolverStrings = @import("org/allbinary/data/tree/dom/URIResolverStrings.zig").URIResolverStrings;

pub const CustomUriResolver = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.CustomUriResolver";
    logUtil: ?*LogUtil = null,
    uriResolverStrings: ?*URIResolverStrings = null,
    path: ?*String = null,
    basicURIResolver: ?*BasicUriResolver = null,
    // Implements URIResolver

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.uriResolverStrings = Inheritance.upcast(?*URIResolverStrings, URIResolverStrings.getInstance());
        
        
    }
    

    pub fn create2(path: ?*String, basicURIResolver: ?*BasicUriResolver) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.path = path;
        this.basicURIResolver = basicURIResolver;
        return this;
    }
    

    // throws TransformerException
    pub fn resolve(self: *Self, href: ?*String, base: ?*String) ?*Source {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.path });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
            _ = Inheritance.call(stringBuffer.?, "append", .{ href });
            const fileAbPath: ?*AbPath = Inheritance.cast(?*AbPath, Inheritance.callStatic(AbFilePath, "create1", .{ Object.toString(Object.of(stringBuffer)) }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XMLLOGGING })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.uriResolverStrings.?.ATTEMPT });
                _ = Inheritance.call(stringBuffer.?, "append", .{ href });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.uriResolverStrings.?.BASE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ base });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.uriResolverStrings.?.NEW_PATH });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(fileAbPath)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.uriResolverStrings.?.NOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.uriResolverStrings.?.URL_GLOBAL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.uriResolverStrings.?.REQUIRED_EXTENSION });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicURIResolver.?.getExtension() });
            }
            return Inheritance.upcast(?*Source, Inheritance.callStatic(StreamSource, "create1", .{ Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoTemplateData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoTemplateData.getInstance().?.ENCRYPTED_EXTENSION }), "getInputStream", .{ fileAbPath }) }));
        }
        // catch (TransformerException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             std.debug.panic("{any}", .{exception: { _ = e; break :exception error.TransformerException; }});
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.path;
    }
};

