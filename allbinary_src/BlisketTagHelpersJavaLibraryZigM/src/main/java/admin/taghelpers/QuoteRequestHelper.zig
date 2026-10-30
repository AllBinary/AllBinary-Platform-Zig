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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const QuoteRequest = @import("org/allbinary/business/user/quoterequest/QuoteRequest.zig").QuoteRequest;
const QuoteRequestEntityFactory = @import("org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory.zig").QuoteRequestEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

//TWB - Am I missing the correct Quote Request? Probably not
pub const QuoteRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.QuoteRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    quoteRequest: ?*QuoteRequest = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.storeFrontInterface = null;
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        const request: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        this.quoteRequest = Inheritance.callStatic(QuoteRequest, "create2", .{ this.weblisketSession.?.getUserName(), request });
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        if (storeName != null) {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        return Inheritance.upcast(?*Boolean, self.quoteRequest.?.isValid());
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.quoteRequest.?.validationInfo());
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.quoteRequest.?.toVector());
            _ = Inheritance.call(Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance().?, "insert", .{ values });
            const success: ?*String = String.literal("New QuoteRequest Successfully added to the QuoteRequest Table");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("add()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add QuoteRequest"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("add()"), e });
//             }
//             return @"error";
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const values: ?*HashMap = Inheritance.upcast(?*HashMap, self.quoteRequest.?.toHashMap());
            _ = Inheritance.call(Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance().?, "update", .{ self.quoteRequest.?.getUserName(), values });
            const success: ?*String = String.literal("New QuoteRequest Successfully updated");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to update QuoteRequest"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED);
    }
};

