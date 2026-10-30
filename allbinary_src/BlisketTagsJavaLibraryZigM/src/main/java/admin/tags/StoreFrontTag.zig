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
const StoreFrontHelperFactory = @import("admin/taghelpers/StoreFrontHelperFactory.zig").StoreFrontHelperFactory;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;

pub const StoreFrontTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.StoreFrontTag";
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
    pub fn getCurrentLocation(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(StoreFrontHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getMethod", .{ String.literal("getCurrentLocation"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to retrieve current location"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("getCurrentLocation()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn getCurrentHomeLocation(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(StoreFrontHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getMethod", .{ String.literal("getCurrentHomeLocation"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to retrieve current home location"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("getCurrentHomeLocation()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (self.command != null) {
                self.propertiesHashMap = Inheritance.upcast(@TypeOf(self.propertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
                _ = Inheritance.call(self.propertiesHashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
                if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.GETCURRENTLOCATION }) == 0) {
                    _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.getCurrentLocation() });
                } else if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.GETCURRENTHOMELOCATION }) == 0) {
                    _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.getCurrentHomeLocation() });
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

