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
// package org.allbinary.business.context.modules.storefront

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasketData = @import("org/allbinary/business/user/commerce/inventory/basket/BasketData.zig").BasketData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;

pub const StoreFrontView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.StoreFrontView";
    logUtil: ?*LogUtil = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(storeFrontInterface: ?*StoreFrontInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Constructing: StoreFrontView for: "), Inheritance.receiver(storeFrontInterface.?, "getName").getName()), this, commonStrings.?.GET_INSTANCE });
        }
        this.storeFrontInterface = storeFrontInterface;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.storeFrontInterface.?, "toHashMap").toHashMap());
        const storeFrontData: ?*StoreFrontData = Inheritance.upcast(?*StoreFrontData, StoreFrontData.getInstance());
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontData.?.CURRENTHOMEHOSTNAME, Inheritance.receiver(self.storeFrontInterface.?, "getCurrentHomeHostName").getCurrentHomeHostName() });
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontData.?.CURRENTHOMEHOSTNAMEPATH, Inheritance.receiver(self.storeFrontInterface.?, "getCurrentHomeHostNamePath").getCurrentHomeHostNamePath() });
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontData.?.CURRENTHOSTNAME, Inheritance.receiver(self.storeFrontInterface.?, "getCurrentHostName").getCurrentHostName() });
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontData.?.CURRENTHOSTNAMEPATH, Inheritance.receiver(self.storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() });
        _ = Inheritance.call(hashMap.?, "put", .{ BasketData.NAME, Inheritance.receiver(self.storeFrontInterface.?, "getBasketName").getBasketName() });
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, storeFrontData.?.NAME, hashMap }));
        return node;
    }
};

