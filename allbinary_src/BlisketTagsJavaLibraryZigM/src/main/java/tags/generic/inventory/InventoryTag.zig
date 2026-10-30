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
// package tags.generic.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const InventoryHelperFactory = @import("taghelpers/InventoryHelperFactory.zig").InventoryHelperFactory;
const StoreValidationTransformTag = @import("tags/StoreValidationTransformTag.zig").StoreValidationTransformTag;

pub const InventoryTag = struct {
    const Self = @This();
    pub const java_name = "tags.generic.inventory.InventoryTag";
    base: StoreValidationTransformTag = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(StoreValidationTransformTag, "create", .{  }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws LicensingException
    pub fn search(self: *Self) void {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(InventoryHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("search"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ result });
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to search Inventory by keyword"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("search()"), e });
//             }
//             { // try
//                 _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(@"error", String.literal("<br>")) });
//                 _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(String.plus(String.literal("Exception: "), e), String.literal("<br>")) });
//             }
//             // catch (Exception e2):
// //                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LICENSINGERROR })) {
// //                     _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception in Exception Handling"), self, String.literal("search()"), e });
// //                 }
    }
    

    // throws LicensingException
    pub fn viewSummary(self: *Self) void {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(InventoryHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("viewSummary"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ result });
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to View Summary"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("viewSummary()"), e });
//             }
//             { // try
//                 _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(@"error", String.literal("<br>")) });
//                 _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(String.plus(String.literal("Exception: "), e), String.literal("<br>")) });
//             }
//             // catch (Exception e2):
// //                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LICENSINGERROR })) {
// //                     _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception in Exception Handling"), self, String.literal("viewSummary())"), e });
// //                 }
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.SEARCH }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Search Inventory View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.inventory.AutoSearchValidationInventoryView") });
                    _ = self.search();
                    return EVAL_BODY_INCLUDE;
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.VIEWSUMMARY }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Inventory View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.inventory.AutoValidationInventoryView") });
                    _ = self.viewSummary();
                    return EVAL_BODY_INCLUDE;
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.VIEW }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Inventory View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.inventory.AutoValidationInventoryView") });
                    return self.base.doStartTag();
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Such View Command: "), Inheritance.receiver(self, "getCommand").getCommand()); break :exception error.Exception; }});
                }
            }
            std.debug.panic("{any}", .{exception: { _ = String.literal("Command Null"); break :exception error.Exception; }});
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

