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
const PaymentHelperFactory = @import("admin/taghelpers/PaymentHelperFactory.zig").PaymentHelperFactory;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const PaymentTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.PaymentTag";
    base: TableTag = undefined,
    logUtil: ?*LogUtil = null,
    storeName: ?*String = null,
    propertiesHashMap: ?*HashMap = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.storeName = null;
        this.propertiesHashMap = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TableTag.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setTagHelperFactory", .{ PaymentHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ PaymentHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
    }
    

    // throws LicensingException
    pub fn select(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(PaymentHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("select"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to select Payment"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("selectPayment()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "isEnabled").isEnabled()) {
                self.propertiesHashMap = Inheritance.upcast(@TypeOf(self.propertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
                _ = Inheritance.call(self.propertiesHashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
                if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ PaymentData.SELECT }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.select());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                        return Inheritance.fieldPointer(self, "EVAL_BODY_INCLUDE").*;
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

