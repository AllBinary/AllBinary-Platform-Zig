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
// package admin.tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const BasketHelperFactory = @import("admin/taghelpers/BasketHelperFactory.zig").BasketHelperFactory;
const BasketRequestHelperFactory = @import("admin/taghelpers/BasketRequestHelperFactory.zig").BasketRequestHelperFactory;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const BasketData = @import("org/allbinary/business/user/commerce/inventory/basket/BasketData.zig").BasketData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BasketTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.BasketTag";
    base: CustomTagSupport = undefined,
    logUtil: ?*LogUtil = null,
    command: ?*String = null,
    storeName: ?*String = null,
    propertiesHashMap: ?*HashMap = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.command = null;
        this.storeName = null;
        this.propertiesHashMap = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomTagSupport.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setCommand(self: *Self, command: ?*String) void {
        self.command = command;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
    }
    

    // throws LicensingException
    pub fn isBasketEmpty(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(BasketHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getMethod", .{ String.literal("isBasketEmpty"), null }));
            const emptyBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return emptyBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isBasketEmpty()"), e });
//             }
//             return true;
    }
    

    // throws LicensingException
    pub fn addItemToBasket(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(BasketRequestHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getMethod", .{ String.literal("addItemToBasket"), null }));
            const emptyBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return emptyBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add item from Basket"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("addItemToBasket()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn removeItemFromBasket(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(BasketRequestHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getMethod", .{ String.literal("removeItemFromBasket"), null }));
            const emptyBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return emptyBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to remove item from Basket"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("removeItemFromBasket()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn adjustBasket(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(BasketRequestHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getMethod", .{ String.literal("adjustBasket"), null }));
            const emptyBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return emptyBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to Adjust Basket"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("adjustBasket()"), e });
//             }
//             return false;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (self.command != null) {
                self.propertiesHashMap = Inheritance.upcast(@TypeOf(self.propertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
                _ = Inheritance.call(self.propertiesHashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
                if (Inheritance.call(self.command.?, "compareTo", .{ BasketData.INSERT }) == 0) {
                    if (!self.addItemToBasket()) {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "println", .{ String.literal("Item is not currently being sold.<p/>") });
                    }
                } else if (Inheritance.call(self.command.?, "compareTo", .{ BasketData.DELETE }) == 0) {
                    _ = self.removeItemFromBasket();
                } else if (Inheritance.call(self.command.?, "compareTo", .{ BasketData.ADJUST }) == 0) {
                    _ = self.adjustBasket();
                } else if (Inheritance.call(self.command.?, "compareTo", .{ BasketData.ISEMPTY }) == 0) {
                    if (self.isBasketEmpty()) {
                        return Inheritance.fieldPointer(self, "EVAL_BODY_INCLUDE").*;
                    } else {
                        return SKIP_BODY;
                    }
                }
            }
            return SKIP_BODY;
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

