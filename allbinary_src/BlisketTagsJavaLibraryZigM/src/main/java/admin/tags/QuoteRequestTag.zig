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
const QuoteHelperFactory = @import("admin/taghelpers/QuoteHelperFactory.zig").QuoteHelperFactory;
const QuoteRequestHelperFactory = @import("admin/taghelpers/QuoteRequestHelperFactory.zig").QuoteRequestHelperFactory;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const QuoteRequestTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.QuoteRequestTag";
    base: TableTag = undefined,
    logUtil: ?*LogUtil = null,
    storeName: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.storeName = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TableTag.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setTagHelperFactory", .{ QuoteHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ QuoteRequestHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setStoreName(self: *Self, storeName: ?*String) void {
        self.storeName = storeName;
    }
    

    // throws LicensingException
    pub fn email(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(QuoteHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("email"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to send QuoteRequest emails"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("sendEmail()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ String.literal("EMAIL") }) == 0) {
                    _ = self.email();
                    return Inheritance.fieldPointer(self, "EVAL_BODY_INCLUDE").*;
                } else {
                    return self.base.doStartTag();
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

