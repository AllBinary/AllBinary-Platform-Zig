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
const ErrorData = @import("org/allbinary/business/error/ErrorData.zig").ErrorData;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;

pub const BasicErrorNodeUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.BasicErrorNodeUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn get(document: ?*Document, errorText: ?*String) ?*Node {
        { // try
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ErrorData.getInstance().?.NAME }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ErrorData.getInstance().?.TEXT, errorText }) });
            return node;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{exception: { _ = String.literal("Error Node Creation Failure"); break :exception error.Exception; }});
    }
};

