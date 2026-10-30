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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Category = @import("org/allbinary/business/category/Category.zig").Category;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const CategoryPropertiesFactoryInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface.zig").CategoryPropertiesFactoryInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ThemeData = @import("org/allbinary/logic/visual/theme/ThemeData.zig").ThemeData;
const ThemeValidation = @import("org/allbinary/logic/visual/theme/ThemeValidation.zig").ThemeValidation;
const ThemesData = @import("org/allbinary/logic/visual/theme/ThemesData.zig").ThemesData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const StoreThemeCategoryInterface = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryInterface.zig").StoreThemeCategoryInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const StoreThemeCategory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.store.theme.StoreThemeCategory";
    pub const java_interfaces = .{ StoreThemeCategoryInterface };
    base: Category = undefined,
    transformInfoInterface: ?*TransformInfoInterface = null,
    themeVector: ?*BasicArrayList = null,
    // Implements StoreThemeCategoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create3(transformInfoInterface: ?*TransformInfoInterface, categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface, level: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Category, "create2", .{ categoryPropertiesFactoryInterface, level }).*;
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.themeVector = Inheritance.upcast(@TypeOf(this.themeVector), BasicArrayListD.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create4(transformInfoInterface: ?*TransformInfoInterface, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Category, "create3", .{ rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }).*;
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.themeVector = Inheritance.upcast(@TypeOf(this.themeVector), BasicArrayListD.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create4(transformInfoInterface: ?*TransformInfoInterface, node: ?*Node, categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface, level: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Category, "create2", .{ categoryPropertiesFactoryInterface, level }).*;
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.themeVector = Inheritance.upcast(@TypeOf(this.themeVector), BasicArrayListD.create());
        _ = Inheritance.call(this, "addThemes", .{ node });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create5(transformInfoInterface: ?*TransformInfoInterface, node: ?*Node, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Category, "create3", .{ rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }).*;
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.themeVector = Inheritance.upcast(@TypeOf(this.themeVector), BasicArrayListD.create());
        _ = Inheritance.call(this, "addThemes", .{ node });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return self.transformInfoInterface;
    }
    

    // throws Exception
    pub fn addThemes(self: *Self, node: ?*Node) void {
        const themesNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ ThemesData.getInstance().?.NAME, node.?.getChildNodes() }));
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, themesNode.?.getChildNodes());
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const themeNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(themeNode.?.getNodeName().?, "compareTo", .{ ThemeData.getInstance().?.NAME }) == 0) {
                _ = Inheritance.call(self.themeVector.?, "add", .{ Inheritance.callStatic(ThemeValidation, "create2", .{ self, themeNode }) });
            }
            }
        }
    }
    

    pub fn addTheme(self: *Self, themeValidation: ?*ThemeValidation) void {
        _ = Inheritance.call(self.themeVector.?, "add", .{ themeValidation });
    }
    

    pub fn getThemes(self: *Self) ?*BasicArrayList {
        return self.themeVector;
    }
    

    // throws Exception
    pub fn isValid(self: *Self) ?*Boolean {
        if (!Inheritance.receiverOf(self.base.isValid().?, "booleanValue").booleanValue()) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        const categoryHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.base.toHashMap());
        _ = Inheritance.call(categoryHashMap.?, "put", .{ ThemesData.getInstance().?.NAME, self.themeVector });
        return categoryHashMap;
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const categoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.base.toVector());
        return categoryVector;
    }
};

