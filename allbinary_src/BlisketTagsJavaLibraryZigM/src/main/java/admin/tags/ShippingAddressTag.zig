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
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const ShippingAddressHelperFactory = @import("admin/taghelpers/ShippingAddressHelperFactory.zig").ShippingAddressHelperFactory;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const ShippingAddressTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.ShippingAddressTag";
    base: TableTag = undefined,
    logUtil: ?*LogUtil = null,
    value: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.value = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TableTag.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setTagHelperFactory", .{ ShippingAddressHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ ShippingAddressHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setValue(self: *Self, value: ?*String) void {
        self.value = value;
    }
    

    // throws LicensingException
    pub fn set(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(ShippingAddressHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("set"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set Shipping Address"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("set()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn setToBillingAddress(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(ShippingAddressHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("setToBillingAddress"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed Setting Shipping address to Billing Address"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setShippingAddressToBillingAddress()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "isEnabled").isEnabled()) {
                if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ ShippingAddressData.SELECT }) == 0) {
                        _ = self.set();
                        return Inheritance.fieldPointer(self, "EVAL_BODY_INCLUDE").*;
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ ShippingAddressData.SETTOBILLINGADDRESS }) == 0) {
                        _ = self.setToBillingAddress();
                    } else {
                        return self.base.doStartTag();
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

