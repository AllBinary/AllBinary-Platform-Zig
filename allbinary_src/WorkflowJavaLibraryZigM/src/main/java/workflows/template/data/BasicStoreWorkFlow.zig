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
// package workflows.template.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreWorkFlowInterface = @import("org/allbinary/logic/control/workflow/StoreWorkFlowInterface.zig").StoreWorkFlowInterface;
const BasicWorkFlow = @import("workflows/template/data/BasicWorkFlow.zig").BasicWorkFlow;

pub const BasicStoreWorkFlow = struct {
    const Self = @This();
    pub const java_name = "workflows.template.data.BasicStoreWorkFlow";
    base: BasicWorkFlow = undefined,
    // Implements StoreWorkFlowInterface
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicWorkFlow, "create2", .{ propertiesHashMap, pageContext }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getStoreName(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "get", .{ StoreFrontData.getInstance().?.NAME }));
    }
};

