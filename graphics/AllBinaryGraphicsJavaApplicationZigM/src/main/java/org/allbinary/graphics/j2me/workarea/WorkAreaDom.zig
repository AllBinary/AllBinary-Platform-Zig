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
// package org.allbinary.graphics.j2me.workarea

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomHelper = @import("org/allbinary/dom/DomHelper.zig").DomHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;

pub const WorkAreaDom = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.WorkAreaDom";
    name: ?*String = null,
    canvasNodeList: ?*BasicArrayList = null,
    pub const WORKAREA: ?*String = String.literal("workArea");
    pub const NAME: ?*String = String.literal("name");
    pub const FRAMES: ?*String = String.literal("frames");

    fn initFields(this: *Self) void {
        this.name = null;
        this.canvasNodeList = null;
    }
    

    pub fn create1(document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const workAreaNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ this.WORKAREA }));
        if (workAreaNodeList != null) {
            const numberOfworkAreas: i32 = workAreaNodeList.?.getLength();
            if (numberOfworkAreas == 1) {
                const numberOfNodes: i32 = workAreaNodeList.?.getLength(); _ = numberOfNodes;
                const nameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.NAME, Inheritance.receiverOf(Inheritance.call(workAreaNodeList.?, "item", .{ 0 }).?, "getChildNodes").getChildNodes() }));
                const nameTextNode: ?*Node = Inheritance.upcast(?*Node, nameNode.?.getFirstChild());
                this.name = Inheritance.upcast(@TypeOf(this.name), nameTextNode.?.getNodeValue());
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Wrong Number of WorkAreas: "), numberOfworkAreas); break :exception error.Exception; }});
            }
            this.canvasNodeList = Inheritance.upcast(@TypeOf(this.canvasNodeList), Inheritance.call(DomHelper.getInstance().?, "getChildrenWithoutTextNodes", .{ WorkAreaDom.FRAMES, Inheritance.receiverOf(Inheritance.call(workAreaNodeList.?, "item", .{ 0 }).?, "getChildNodes").getChildNodes() }));
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("workArea Node Not Found"); break :exception error.Exception; }});
        }
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getCanvasNodes(self: *Self) ?*BasicArrayList {
        return self.canvasNodeList;
    }
};

