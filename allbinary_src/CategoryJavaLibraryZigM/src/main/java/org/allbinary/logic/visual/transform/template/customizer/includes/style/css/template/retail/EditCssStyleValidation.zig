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
// package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const StyleData = @import("org/allbinary/logic/visual/dhtml/style/StyleData.zig").StyleData;
const StylesData = @import("org/allbinary/logic/visual/dhtml/style/StylesData.zig").StylesData;
const ColorsView = @import("org/allbinary/logic/visual/dhtml/style/color/ColorsView.zig").ColorsView;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CssStyleValidation = @import("org/allbinary/logic/visual/transform/template/customizer/includes/style/css/template/retail/CssStyleValidation.zig").CssStyleValidation;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const EditCssStyleValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.EditCssStyleValidation";
    base: CssStyleValidation = undefined,
    // Implements ValidationInterface
    // Implements DomNodeInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CssStyleValidation.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CssStyleValidation, "create1", .{ document }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CssStyleValidation, "create1", .{ hashMap }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        return Inheritance.upcast(?*Boolean, self.base.isValid());
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.validationInfo());
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StylesData.getInstance().?.NAME }));
        const styleNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StyleData.getInstance().?.NAME }));
        _ = Inheritance.call(node.?, "appendChild", .{ styleNode });
        _ = Inheritance.call(styleNode.?, "appendChild", .{ Inheritance.call(ColorsView.create(), "toXmlNode", .{ document }) });
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "cssStyleElementVector").*.?, "size").size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const styleDomNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.call(Inheritance.fieldPointer(self, "cssStyleElementVector").*.?, "get", .{ i }));
            _ = Inheritance.call(styleNode.?, "appendChild", .{ Inheritance.call(styleDomNodeInterface.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};

