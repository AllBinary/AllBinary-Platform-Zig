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
// package org.allbinary.logic.visual.dhtml.style.css.property

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const CssPropertyData = @import("org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyData.zig").CssPropertyData;
const CssPropertyValidationFactory = @import("org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyValidationFactory.zig").CssPropertyValidationFactory;

pub const CssPropertiesValidationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(nodeList: ?*NodeList) ?*BasicArrayList {
        const propertiesVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(node.?.getNodeName().?, "compareTo", .{ CssPropertyData.getInstance().?.NAME }) == 0) {
                const cssPropertyValidationInterface: ?*ValidationInterface = Inheritance.cast(?*ValidationInterface, Inheritance.callStatic(CssPropertyValidationFactory, "getInstance", .{ node }));
                _ = Inheritance.call(propertiesVector.?, "add", .{ cssPropertyValidationInterface });
            }
            }
        }
        return propertiesVector;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(hashMap: ?*HashMap) ?*BasicArrayList {
        _ = hashMap;
        const styles: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        return styles;
    }
};

