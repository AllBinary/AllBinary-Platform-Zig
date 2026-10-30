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
// package org.allbinary.logic.visual.transform.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;

pub const TransformDocument = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.data.TransformDocument";
    pub const java_interfaces = .{ TransformDocumentInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    baseNode: ?*Node = null,
    document: ?*Document = null,
    // Implements TransformDocumentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.baseNode = null;
        this.document = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            this.document = Inheritance.upcast(@TypeOf(this.document), DomDocumentHelper.create());
            const allbinaryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(this.document.?, "createElement", .{ String.literal("allbinary") }));
            this.baseNode = allbinaryNode;
            _ = Inheritance.call(this.document.?, "appendChild", .{ this.baseNode });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
                _ = Inheritance.call(this.logUtil.?, "putF", .{ this.log(), this, this.commonStrings.?.CONSTRUCTOR });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(this.logUtil.?, "put", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR, e });
//             }
//             std.debug.panic("{any}", .{e});
        return this;
    }
    

    pub fn getBaseNode(self: *Self) ?*Node {
        return self.baseNode;
    }
    

    pub fn getDoc(self: *Self) ?*Document {
        return self.document;
    }
    

    // throws Exception
    pub fn log(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (self.baseNode != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("BaseNode: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.baseNode.?.getNodeName() });
        } else {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Log-Error: BaseNode is Null") });
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nDocument: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.document }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

