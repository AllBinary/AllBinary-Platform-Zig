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
// package org.allbinary.business.context.modules.storefront.statistics.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StoreFrontInventoryStatisticsData = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsData.zig").StoreFrontInventoryStatisticsData;
const StoreFrontInventoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface.zig").StoreFrontInventoryStatisticsInterface;

pub const StoreFrontInventoryStatisticsView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView";
    storeFrontInventoryStatisticsInterface: ?*StoreFrontInventoryStatisticsInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(storeFrontInventoryStatisticsInterface: ?*StoreFrontInventoryStatisticsInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.storeFrontInventoryStatisticsInterface = storeFrontInventoryStatisticsInterface;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.storeFrontInventoryStatisticsInterface.?, "toHashMap").toHashMap());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, StoreFrontInventoryStatisticsData.getInstance().?.NAME, hashMap }));
        return node;
    }
};

