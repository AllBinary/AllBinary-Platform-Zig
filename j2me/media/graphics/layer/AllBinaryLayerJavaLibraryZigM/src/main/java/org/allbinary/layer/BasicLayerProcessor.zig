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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

pub const BasicLayerProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.BasicLayerProcessor";
    logUtil: ?*LogUtil = null,
    list: ?*BasicArrayList = null,
    pub var NULL_LAYER_PROCESSOR: ?*BasicLayerProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_LAYER_PROCESSOR = BasicLayerProcessor.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn add(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        if (!Inheritance.call(self.list.?, "contains", .{ layerInterface })) {
            _ = Inheritance.call(self.list.?, "add", .{ layerInterface });
        }
    }
    

    // throws Exception
    pub fn process(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = CommonStrings.getInstance().?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
};

