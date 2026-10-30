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
// package org.allbinary.business.user.modules.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const UserConfiguration = @import("org/allbinary/business/user/modules/configuration/UserConfiguration.zig").UserConfiguration;
const UserConfigurationData = @import("org/allbinary/business/user/modules/configuration/UserConfigurationData.zig").UserConfigurationData;
const UserConfigurationInterface = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterface.zig").UserConfigurationInterface;
const UserConfigurationView = @import("org/allbinary/business/user/modules/configuration/UserConfigurationView.zig").UserConfigurationView;

pub const UserConfigurationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory";
    const configurationName: ?*String = String.literal("DefaultUserConfiguration");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(document: ?*Document) ?*UserConfigurationInterface {
        const configurationNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ UserConfigurationData.NAME, document.?.getChildNodes() }));
        return Inheritance.cast(?*UserConfigurationInterface, Inheritance.callStatic(UserConfigurationView, "create1", .{ configurationNode }).getUserConfigurationInterface());
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance1(userRole: ?*UserRole) ?*UserConfigurationInterface {
        const abPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.USERCONFIGURATIONPATH, String.plus(String.plus(String.plus(UserConfigurationInterfaceFactory.configurationName, Object.toString(Object.of(userRole))), AbPathData.getInstance().?.EXTENSION_SEP), UserConfigurationData.UNCRYPTED_EXTENSION) });
        const documentString: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ UserConfigurationData.UNCRYPTED_EXTENSION, UserConfigurationData.ENCRYPTED_EXTENSION }), "get", .{ abPath }));
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ documentString }));
        return Inheritance.upcast(?*UserConfigurationInterface, Inheritance.callStatic(UserConfigurationInterfaceFactory, "getInstance", .{ document }));
    }
    

    // throws Exception
    pub fn getInstance() ?*UserConfigurationInterface {
        return Inheritance.upcast(?*UserConfigurationInterface, UserConfiguration.create());
    }
};

