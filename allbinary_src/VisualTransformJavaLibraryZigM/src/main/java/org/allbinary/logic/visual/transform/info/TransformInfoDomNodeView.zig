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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const Attr = @import("org/w3c/dom/Attr.zig").Attr;
const Document = @import("org/w3c/dom/Document.zig").Document;
const NamedNodeMap = @import("org/w3c/dom/NamedNodeMap.zig").NamedNodeMap;
const Node = @import("org/w3c/dom/Node.zig").Node;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoDomNode = @import("org/allbinary/logic/visual/transform/info/TransformInfoDomNode.zig").TransformInfoDomNode;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const TransformInfoDomNodeView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView";
    base: TransformInfoDomNode = undefined,
    // Implements DomNodeInterface
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, mapping: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoDomNode, "create2", .{ transformInfoInterface, mapping }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoDomNode, "create1", .{ transformInfoInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(name: ?*String, mappedName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoDomNode, "create2", .{ name, mappedName }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoDomNode, "create2", .{ name, null }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        const subViewNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ transformInfoData.?.NAME }));
        const viewNameAttr: ?*Attr = Inheritance.upcast(?*Attr, Inheritance.call(document.?, "createAttribute", .{ transformInfoData.?.NAME }));
        _ = Inheritance.call(viewNameAttr.?, "setValue", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName() });
        const componentNodeAttributes: ?*NamedNodeMap = Inheritance.upcast(?*NamedNodeMap, subViewNode.?.getAttributes());
        _ = Inheritance.call(componentNodeAttributes.?, "setNamedItem", .{ viewNameAttr });
        if (Inheritance.receiver(self, "getMappedName").getMappedName() != null) {
            const mappedNameAttr: ?*Attr = Inheritance.upcast(?*Attr, Inheritance.call(document.?, "createAttribute", .{ transformInfoData.?.MAPPED }));
            _ = Inheritance.call(mappedNameAttr.?, "setValue", .{ Inheritance.receiver(self, "getMappedName").getMappedName() });
            _ = Inheritance.call(componentNodeAttributes.?, "setNamedItem", .{ mappedNameAttr });
        }
        return subViewNode;
    }
};

