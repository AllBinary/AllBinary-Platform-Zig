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
// package org.allbinary.input.automation.module.generic.configuration.profile

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const InputImageType = @import("org/allbinary/input/media/image/InputImageType.zig").InputImageType;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const GenericProfileDataWorkerData = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerData.zig").GenericProfileDataWorkerData;
const GenericProfileDataWorkerTypeInterface = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerTypeInterface.zig").GenericProfileDataWorkerTypeInterface;
const SavedCaptureGenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType.zig").SavedCaptureGenericProfileDataWorkerType;

pub const GenericProfileDataWorkerType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerType";
    pub const java_interfaces = .{ GenericProfileDataWorkerTypeInterface };
    name: ?*String = null,
    // Implements GenericProfileDataWorkerTypeInterface
    var hashMap: ?*HashMap = undefined;
    pub var SAVED_CAPTURE: ?*GenericProfileDataWorkerType = undefined;
    pub var SCREEN_CAPTURE: ?*GenericProfileDataWorkerType = undefined;
    pub var COMPARISON: ?*GenericProfileDataWorkerType = undefined;
    pub var MOTION: ?*GenericProfileDataWorkerType = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        SAVED_CAPTURE = Inheritance.upcast(?*GenericProfileDataWorkerType, SavedCaptureGenericProfileDataWorkerType.SAVED_CAPTURE);
        SCREEN_CAPTURE = Inheritance.callStatic(GenericProfileDataWorkerType, "create1", .{ String.plus(String.literal("Screen "), Inheritance.receiverOf(InputImageType.CAPTURE.?, "getName").getName()) });
        COMPARISON = Inheritance.callStatic(GenericProfileDataWorkerType, "create1", .{ Inheritance.receiverOf(InputImageType.COMPARISON.?, "getName").getName() });
        MOTION = Inheritance.callStatic(GenericProfileDataWorkerType, "create1", .{ Inheritance.receiverOf(InputImageType.MOTION.?, "getName").getName() });
    }

    fn initFields(this: *Self) void {
        this.name = null;
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(GenericProfileDataWorkerType.hashMap.?, "put", .{ this.getName(), this });
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, GenericProfileDataWorkerData.NAME, self.name }));
        return node;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.literal("GenericProfileDataWorkerType: "), self.getName()));
    }
    

    pub fn getInstance(node: ?*Node) ?*GenericProfileDataWorkerType {
        const name: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }));
        return Inheritance.cast(?*GenericProfileDataWorkerType, Inheritance.call(GenericProfileDataWorkerType.hashMap.?, "get", .{ name }));
    }
};

