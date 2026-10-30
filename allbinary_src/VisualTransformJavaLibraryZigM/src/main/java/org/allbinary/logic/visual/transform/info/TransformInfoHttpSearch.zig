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
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoHttp = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttp.zig").TransformInfoHttp;

pub const TransformInfoHttpSearch = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch";
    base: TransformInfoHttp = undefined,
    

    pub fn create1(searchRequest: ?*SearchRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoHttp, "create2", .{ Inheritance.receiver(searchRequest.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(searchRequest.?, "getPageContext").getPageContext() }).*;
        if (Inheritance.receiverOf(Inheritance.receiver(searchRequest.?, "getStoreFront").getStoreFront().?, "getName").getName() != null) {
            _ = Inheritance.call(this, "setStoreName", .{ Inheritance.receiverOf(Inheritance.receiver(searchRequest.?, "getStoreFront").getStoreFront().?, "getName").getName() });
        } else {
            _ = Inheritance.call(this, "setStoreName", .{ StringUtil.getInstance().?.EMPTY_STRING });
        }
        const dataFileName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(searchRequest.?, "getXslFile").getXslFile());
        _ = Inheritance.call(this, "setTemplateFile", .{ dataFileName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getPath(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getStoreName").getStoreName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // throws Exception
    pub fn getTemplateFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ self.getPath(), Inheritance.receiver(self, "getTemplateFile").getTemplateFile() });
    }
    

    // throws Exception
    pub fn getObjectConfigFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ self.getPath(), Inheritance.receiver(self, "getObjectConfigFile").getObjectConfigFile() });
    }
    

    // throws Exception
    pub fn getDataFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ self.getPath(), Inheritance.receiver(self, "getDataFile").getDataFile() });
    }
};

