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
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BasketHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.BasketHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    propertiesHashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,
    MAX: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.storeFrontInterface = null;
        
        
        this.MAX = 200;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.propertiesHashMap = hashMap;
        this.pageContext = pageContext;
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(this.propertiesHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        if (storeName != null) {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        }
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isBasketEmpty(self: *Self) ?*Boolean {
        { // try
            const basket: ?*BasketInterface = Inheritance.upcast(?*BasketInterface, Inheritance.receiverOf(self.weblisketSession.?.getOrder().?, "getBasket").getBasket());
            if (Inheritance.receiverOf(basket.?.getNumberOfItems().?, "intValue").intValue() <= 0) {
                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
            } else {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isBasketEmpty()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
};

