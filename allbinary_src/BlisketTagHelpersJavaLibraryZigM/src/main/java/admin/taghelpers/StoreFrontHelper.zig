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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFront = @import("org/allbinary/business/context/modules/storefront/StoreFront.zig").StoreFront;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;

pub const StoreFrontHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.StoreFrontHelper";
    base: TagHelper = undefined,
    storeFrontInterface: ?*StoreFrontInterface = null,
    currentLocation: ?*String = null,
    currentHomeLocation: ?*String = null,

    fn initFields(this: *Self) void {
        this.storeFrontInterface = null;
        this.currentLocation = null;
        this.currentHomeLocation = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        _ = pageContext;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        if (storeName != null) {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
            this.currentLocation = Inheritance.upcast(@TypeOf(this.currentLocation), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ CommonSeps.getInstance().?.SPACE, String.literal("%20") }), "all", .{ Inheritance.receiver(this.storeFrontInterface.?, "getCurrentHostName").getCurrentHostName() + Inheritance.receiver(this.storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() }));
            this.currentHomeLocation = Inheritance.upcast(@TypeOf(this.currentHomeLocation), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ CommonSeps.getInstance().?.SPACE, String.literal("%20") }), "all", .{ Inheritance.receiver(this.storeFrontInterface.?, "getCurrentHomeHostName").getCurrentHomeHostName() + Inheritance.receiver(this.storeFrontInterface.?, "getCurrentHomeHostNamePath").getCurrentHomeHostNamePath() }));
        } else {
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), StoreFront.create());
            this.currentLocation = Inheritance.upcast(@TypeOf(this.currentLocation), stringUtil.?.EMPTY_STRING);
            this.currentHomeLocation = Inheritance.upcast(@TypeOf(this.currentHomeLocation), stringUtil.?.EMPTY_STRING);
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getCurrentLocation(self: *Self) ?*String {
        return self.currentLocation;
    }
    

    pub fn getCurrentHomeLocation(self: *Self) ?*String {
        return self.currentHomeLocation;
    }
};

