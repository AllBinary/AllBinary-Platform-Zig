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
// package org.allbinary.business.context.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ContextConfigurationData = @import("org/allbinary/business/context/configuration/ContextConfigurationData.zig").ContextConfigurationData;
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;
const ContextConfigurationPathUtil = @import("org/allbinary/business/context/configuration/ContextConfigurationPathUtil.zig").ContextConfigurationPathUtil;
const ContextConfigurationView = @import("org/allbinary/business/context/configuration/ContextConfigurationView.zig").ContextConfigurationView;

pub const ContextConfigurationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory";
    var instance: ?*ContextConfigurationInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ContextConfigurationInterfaceFactory.create();
    }
    

    pub fn getInstance() ?*ContextConfigurationInterfaceFactory {
        return Inheritance.upcast(?*ContextConfigurationInterfaceFactory, ContextConfigurationInterfaceFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, document: ?*Document) ?*ContextConfigurationInterface {
        _ = self;
        const contextConfigurationData: ?*ContextConfigurationData = Inheritance.upcast(?*ContextConfigurationData, ContextConfigurationData.getInstance());
        const contextConfigurationNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ contextConfigurationData.?.NAME, document.?.getChildNodes() }));
        return Inheritance.cast(?*ContextConfigurationInterface, Inheritance.callStatic(ContextConfigurationView, "create1", .{ contextConfigurationNode }).getContextConfigurationInterface());
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance1(self: *Self, contextName: ?*String) ?*ContextConfigurationInterface {
        const abPath: ?*AbPath = Inheritance.upcast(?*AbPath, Inheritance.callStatic(ContextConfigurationPathUtil, "getAbPath", .{ contextName }));
        const contextConfigurationData: ?*ContextConfigurationData = Inheritance.upcast(?*ContextConfigurationData, ContextConfigurationData.getInstance());
        const documentString: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ contextConfigurationData.?.UNCRYPTED_EXTENSION, contextConfigurationData.?.ENCRYPTED_EXTENSION }), "get", .{ abPath }));
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ documentString }));
        return Inheritance.upcast(?*ContextConfigurationInterface, Inheritance.call(self, "getInstance", .{ document }));
    }
};

