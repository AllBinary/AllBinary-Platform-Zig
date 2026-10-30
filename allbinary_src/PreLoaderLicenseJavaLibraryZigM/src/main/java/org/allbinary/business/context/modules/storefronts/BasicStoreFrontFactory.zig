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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicStoreFrontInterface = @import("org/allbinary/business/context/modules/storefronts/BasicStoreFrontInterface.zig").BasicStoreFrontInterface;
const BasicStoreFrontsEntity = @import("org/allbinary/business/context/modules/storefronts/BasicStoreFrontsEntity.zig").BasicStoreFrontsEntity;

pub const BasicStoreFrontFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*BasicStoreFrontFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicStoreFrontFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*BasicStoreFrontFactory {
        return Inheritance.upcast(?*BasicStoreFrontFactory, BasicStoreFrontFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, storeName: ?*String) ?*BasicStoreFrontInterface {
        _ = self;
        { // try
            const storeFronts: ?*BasicStoreFrontsEntity = BasicStoreFrontsEntity.create();
            return Inheritance.upcast(?*BasicStoreFrontInterface, Inheritance.call(storeFronts.?, "getStoreFrontInterface", .{ storeName }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.FACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};

