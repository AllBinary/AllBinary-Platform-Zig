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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const LOGGING = @import("org/allbinary/log/LOGGING.zig").LOGGING;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Node = @import("org/w3c/dom/Node.zig").Node;
const GraphicItemBuilder = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemBuilder.zig").GraphicItemBuilder;
const GraphicItemInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface.zig").GraphicItemInterface;
const GraphicsItemInterfaceFactoryInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface.zig").GraphicsItemInterfaceFactoryInterface;
const LinesGraphicItem = @import("org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem.zig").LinesGraphicItem;
const LinesGraphicItemFactory = @import("org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItemFactory.zig").LinesGraphicItemFactory;
const SelectionToolFactory = @import("org/allbinary/graphics/j2me/workarea/tools/SelectionToolFactory.zig").SelectionToolFactory;

pub const GraphicItemFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory";
    graphicItems: ?*HashMap = null,
    DEFAULT: ?*GraphicsItemInterfaceFactoryInterface = null,
    var instance: ?*GraphicItemFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GraphicItemFactory.create();
    }

    fn initFields(this: *Self) void {
        
        this.DEFAULT = Inheritance.upcast(?*GraphicsItemInterfaceFactoryInterface, SelectionToolFactory.create());
    }
    

    pub fn getInstance() ?*GraphicItemFactory {
        return Inheritance.upcast(?*GraphicItemFactory, GraphicItemFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.graphicItems = Inheritance.upcast(@TypeOf(this.graphicItems), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(this.graphicItems.?, "put", .{ LinesGraphicItem.getStaticName(), LinesGraphicItemFactory.create() });
        return this;
    }
    

    pub fn getInstance1(self: *Self, itemName: ?*String) ?*GraphicsItemInterfaceFactoryInterface {
        var graphicsItemInterfaceFactoryInterface: ?*GraphicsItemInterfaceFactoryInterface = Inheritance.cast(?*GraphicsItemInterfaceFactoryInterface, Inheritance.call(self.graphicItems.?, "get", .{ itemName }));
        if (graphicsItemInterfaceFactoryInterface == null) {
            graphicsItemInterfaceFactoryInterface = self.DEFAULT;
        }
        return graphicsItemInterfaceFactoryInterface;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance1(self: *Self, graphicItemNodeList: ?*BasicArrayList) ?*HashMap {
        _ = self;
        const numberOfItems: i32 = graphicItemNodeList.?.size();
        const graphicItemHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.MENUEVENT })) {
        }
        {
            var index: i32 = 0;
            while (index < numberOfItems) : (index += 1) {
            const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, Inheritance.callStatic(GraphicItemBuilder, "getInstance", .{ Inheritance.cast(?*Node, Inheritance.call(graphicItemNodeList.?, "get", .{ index })) }));
            _ = Inheritance.call(graphicItemHashMap.?, "put", .{ graphicItem.?.getTreeNode(), graphicItem });
            }
        }
        return graphicItemHashMap;
    }
};

