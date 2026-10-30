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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const TransformInfoFactoryInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoFactoryInterface.zig").TransformInfoFactoryInterface;
const TransformInfoHttpStore = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStore.zig").TransformInfoHttpStore;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const TransformInfoHttpStoreFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory";
    pub const java_interfaces = .{ TransformInfoFactoryInterface };
    // Implements TransformInfoFactoryInterface
    var instance: ?*TransformInfoHttpStoreFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoHttpStoreFactory.create();
    }
    

    pub fn getInstance() ?*TransformInfoHttpStoreFactory {
        return Inheritance.upcast(?*TransformInfoHttpStoreFactory, TransformInfoHttpStoreFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance3(self: *Self, databaseHashMap: ?*HashMap, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface {
        _ = self;
        return Inheritance.upcast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoHttpStore, "create3", .{ databaseHashMap, propertiesHashMap, pageContext }));
    }
};

