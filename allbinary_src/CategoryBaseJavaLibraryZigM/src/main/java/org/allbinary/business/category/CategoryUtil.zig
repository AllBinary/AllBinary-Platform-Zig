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
// package org.allbinary.business.category

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringUtils = @import("org/apache/commons/lang3/StringUtils.zig").StringUtils;
const Attr = @import("org/w3c/dom/Attr.zig").Attr;
const NamedNodeMap = @import("org/w3c/dom/NamedNodeMap.zig").NamedNodeMap;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;

pub const CategoryUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.CategoryUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getPathLevel(categoryPath: ?*AbPath) i32 {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const count: i32 = Inheritance.callStatic(StringUtils, "countMatches", .{ Object.toString(Object.of(categoryPath)), AbPathData.getInstance().?.SEPARATOR });
        return count;
    }
    

    pub fn getNameFromNode(node: ?*Node) ?*String {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const attributes: ?*NamedNodeMap = Inheritance.upcast(?*NamedNodeMap, node.?.getAttributes());
        const attrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(attributes.?, "getNamedItem", .{ CategoryData.getInstance().?.LABEL }));
        if (attrNode != null) {
            return Inheritance.upcast(?*String, attrNode.?.getValue());
        } else {
            const labelNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ CategoryData.getInstance().?.LABEL, node.?.getChildNodes() }));
            if (labelNode != null) {
                return Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ labelNode }));
            }
        }
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
};

