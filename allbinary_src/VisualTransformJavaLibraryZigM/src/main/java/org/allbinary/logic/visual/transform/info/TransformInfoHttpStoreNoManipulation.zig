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
const TransformInfoObjectConfigNoManipulationFactory = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigNoManipulationFactory.zig").TransformInfoObjectConfigNoManipulationFactory;
const TransformInfoHttpStore = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStore.zig").TransformInfoHttpStore;

pub const TransformInfoHttpStoreNoManipulation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation";
    base: TransformInfoHttpStore = undefined,
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoHttpStore, "create2", .{ propertiesHashMap, pageContext }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setObjectConfigFile(self: *Self, value: ?*String) void {
        _ = Inheritance.call(self, "setObjectConfigFileName", .{ value });
        _ = Inheritance.call(self, "setObjectConfigInterface", .{ Inheritance.call(TransformInfoObjectConfigNoManipulationFactory.getInstance().?, "getInstance", .{ self, Inheritance.receiver(self, "getObjectConfigFilePath").getObjectConfigFilePath() }) });
    }
    

    // throws Exception
    pub fn setObjectConfig(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("Should not set from config"); break :exception error.Exception; }});
    }
};

