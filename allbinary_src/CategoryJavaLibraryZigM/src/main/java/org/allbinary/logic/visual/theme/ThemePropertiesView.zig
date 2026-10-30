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
// package org.allbinary.logic.visual.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ThemeData = @import("org/allbinary/logic/visual/theme/ThemeData.zig").ThemeData;
const ThemeInterface = @import("org/allbinary/logic/visual/theme/ThemeInterface.zig").ThemeInterface;

pub const ThemePropertiesView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.theme.ThemePropertiesView";
    themeInterface: ?*ThemeInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(themeInterface: ?*ThemeInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.themeInterface = themeInterface;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ThemeData.getInstance().?.NAME, Inheritance.receiver(self.themeInterface.?, "toHashMap").toHashMap() }));
        return node;
    }
};

