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
// package org.allbinary.business.category.store.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryView = @import("org/allbinary/business/category/CategoryView.zig").CategoryView;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ThemeInterface = @import("org/allbinary/logic/visual/theme/ThemeInterface.zig").ThemeInterface;
const ThemePropertiesView = @import("org/allbinary/logic/visual/theme/ThemePropertiesView.zig").ThemePropertiesView;
const ThemeValidation = @import("org/allbinary/logic/visual/theme/ThemeValidation.zig").ThemeValidation;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StoreThemeCategoryInterface = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryInterface.zig").StoreThemeCategoryInterface;

pub const StoreThemeCategoryPathView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.store.theme.StoreThemeCategoryPathView";
    base: CategoryView = undefined,
    // Implements DomNodeInterface
    

    pub fn create1(categoryInterface: ?*StoreThemeCategoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CategoryView, "create1", .{ Inheritance.cast(?*StoreThemeCategoryInterface, categoryInterface) }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(&self.base, "toXmlNode", .{ document }));
        const storeThemeCategoryInterface: ?*StoreThemeCategoryInterface = Inheritance.cast(?*StoreThemeCategoryInterface, Inheritance.receiver(self, "getCategoryInterface").getCategoryInterface());
        const themeArray: []?Object = Inheritance.receiverOf(Inheritance.receiver(storeThemeCategoryInterface.?, "getThemes").getThemes().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(themeArray.len));
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const themeValidation: ?*ThemeValidation = Inheritance.cast(?*ThemeValidation, themeArray[@intCast(i)]);
            const domNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.callStatic(ThemePropertiesView, "create1", .{ Inheritance.cast(?*ThemeInterface, themeValidation) }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(domNodeInterface.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};

