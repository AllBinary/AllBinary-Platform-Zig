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
// package org.allbinary.logic.visual.dhtml.style.css.property.font

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CssPropertyView = @import("org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyView.zig").CssPropertyView;
const Node = @import("org/w3c/dom/Node.zig").Node;
const FontFamilyData = @import("org/allbinary/logic/visual/dhtml/style/css/property/font/FontFamilyData.zig").FontFamilyData;

pub const FontFamilyView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView";
    base: CssPropertyView = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CssPropertyView, "create1", .{ FontFamilyData.getInstance().?.VALUE }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CssPropertyView, "create1", .{ node }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

