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
// package org.allbinary.business.category.properties.root.store.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const RootStoreCategoryProperties = @import("org/allbinary/business/category/properties/root/store/RootStoreCategoryProperties.zig").RootStoreCategoryProperties;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoHttpStoreInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreInterface.zig").TransformInfoHttpStoreInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Node = @import("org/w3c/dom/Node.zig").Node;

pub const RootStoreThemeCategoryProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties";
    base: RootStoreCategoryProperties = undefined,
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RootStoreCategoryProperties, "create1", .{ transformInfoInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, abPath: ?*AbPath) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RootStoreCategoryProperties, "create2", .{ transformInfoInterface, abPath }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RootStoreCategoryProperties, "create2", .{ transformInfoInterface, node }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, categoryPropertiesHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RootStoreCategoryProperties, "create2", .{ transformInfoInterface, categoryPropertiesHashMap }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn initPath(self: *Self) void {
        const transformInfoHttpStoreInterface: ?*TransformInfoHttpStoreInterface = Inheritance.cast(?*TransformInfoHttpStoreInterface, Inheritance.fieldPointer(self, "transformInfoInterface").*);
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiver(transformInfoHttpStoreInterface.?, "getStoreName").getStoreName() }));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.THEMEPATH });
        const abPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
        const httpServletRequest: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(transformInfoHttpStoreInterface.?, "getPageContext").getPageContext().?, "getRequest").getRequest());
        Inheritance.fieldPointer(self, "webAppAbPath").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "webAppAbPath").*), Inheritance.callStatic(AbPath, "create2", .{ String.plus(httpServletRequest.?.getContextPath(), Object.toString(Object.of(abPath))), StringUtil.getInstance().?.EMPTY_STRING }));
        _ = Inheritance.call(self, "setRootFilePath", .{ Inheritance.callStatic(AbPath, "create2", .{ String.plus(URLGLOBALS.getMainPath(), Object.toString(Object.of(abPath))), StringUtil.getInstance().?.EMPTY_STRING }) });
    }
};

