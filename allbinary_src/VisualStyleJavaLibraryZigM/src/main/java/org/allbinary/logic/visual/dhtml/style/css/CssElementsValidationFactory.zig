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
// package org.allbinary.logic.visual.dhtml.style.css

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
const CssElementValidationFactory = @import("org/allbinary/logic/visual/dhtml/style/css/CssElementValidationFactory.zig").CssElementValidationFactory;

pub const CssElementsValidationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(cssElementStyleNodeList: ?*BasicArrayList) ?*BasicArrayList {
        const styles: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = cssElementStyleNodeList.?.size();
        var cssElementStyleNode: ?*Node = null;
        var cssValidationInterface: ?*ValidationInterface = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            cssElementStyleNode = Inheritance.cast(?*Node, Inheritance.call(cssElementStyleNodeList.?, "get", .{ index }));
            cssValidationInterface = Inheritance.cast(?*ValidationInterface, Inheritance.callStatic(CssElementValidationFactory, "getInstance", .{ cssElementStyleNode }));
            _ = Inheritance.call(styles.?, "add", .{ cssValidationInterface });
            }
        }
        return styles;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(hashMap: ?*HashMap) ?*BasicArrayList {
        _ = hashMap;
        const styles: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        return styles;
    }
};

