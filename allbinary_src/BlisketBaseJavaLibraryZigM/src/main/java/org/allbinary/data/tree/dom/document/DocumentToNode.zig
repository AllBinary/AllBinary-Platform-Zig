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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;

pub const DocumentToNode = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.document.DocumentToNode";
    const XMLROOT: ?*String = String.literal("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
    const XMLROOTSTART: ?*String = String.literal("<?xml");
    const XMLROOTEND: ?*String = String.literal("?>");
    const XMLJSPROOTSTART: ?*String = String.literal("<jsp:root");
    const XMLEND: ?*String = String.literal(">");
    const XMLJSPROOTENDSTART: ?*String = String.literal("</jsp:root");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn convertDocumentToNodeString(documentStringParameter: ?*String) ?*String {
        var documentString = documentStringParameter;
        documentString = Inheritance.upcast(@TypeOf(documentString), Inheritance.callStatic(DocumentToNode, "remove", .{ documentString, DocumentToNode.XMLJSPROOTSTART, DocumentToNode.XMLEND }));
        documentString = Inheritance.upcast(@TypeOf(documentString), Inheritance.callStatic(DocumentToNode, "remove", .{ documentString, DocumentToNode.XMLJSPROOTENDSTART, DocumentToNode.XMLEND }));
        const replaceXmlRoot: ?*Replace = Inheritance.callStatic(Replace, "create2", .{ DocumentToNode.XMLROOT, StringUtil.getInstance().?.EMPTY_STRING });
        return Inheritance.upcast(?*String, Inheritance.call(replaceXmlRoot.?, "all", .{ documentString }));
    }
    

    pub fn removeXmlDefinitionFromDocumentString(documentString: ?*String) ?*String {
        return Inheritance.upcast(?*String, Inheritance.callStatic(DocumentToNode, "remove", .{ documentString, DocumentToNode.XMLROOTSTART, DocumentToNode.XMLROOTEND }));
    }
    

    pub fn remove(documentString: ?*String, start: ?*String, end: ?*String) ?*String {
        var startIndex: i32 = 0;
        while ((value_N66688: { startIndex = Inheritance.call(documentString.?, "indexOf", .{ start }); break :value_N66688 startIndex; }) != -1) {
            if (startIndex >= 0) {
                const endIndex: i32 = documentString.?.indexOf2(end, startIndex);
                if (endIndex >= 0) {
                    const startString: ?*String = Inheritance.upcast(?*String, documentString.?.substring2(0, startIndex));
                    const resultString: ?*String = Inheritance.upcast(?*String, Inheritance.call(documentString.?, "substring", .{ endIndex + 1 }));
                    return Inheritance.upcast(?*String, String.plus(startString, resultString));
                }
            }
        }
        return documentString;
    }
};

