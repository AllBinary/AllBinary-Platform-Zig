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
// package org.allbinary.business.context.modules.storefronts

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const InitSql = @import("org/allbinary/business/init/InitSql.zig").InitSql;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicStoreFront = @import("org/allbinary/business/context/modules/storefronts/BasicStoreFront.zig").BasicStoreFront;
const BasicStoreFrontInterface = @import("org/allbinary/business/context/modules/storefronts/BasicStoreFrontInterface.zig").BasicStoreFrontInterface;

pub const BasicStoreFrontsEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity";
    base: InitSql = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("storefronts");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(InitSql, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTable", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getStoreFrontInterface(self: *Self, name: ?*String) ?*BasicStoreFrontInterface {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(keysAndValues.?, "put", .{ StoreFrontData.getInstance().?.NAME, name });
        const storeHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ keysAndValues }));
        if (storeHashMap == null) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Such Store: "), name); break :exception error.Exception; }});
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.FACTORYERROR })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("StoreFront: "), Object.toString(Object.of(storeHashMap))), self, String.literal("getStore()") });
        }
        return Inheritance.cast(?*BasicStoreFrontInterface, Inheritance.callStatic(BasicStoreFront, "create1", .{ storeHashMap }));
    }
};

