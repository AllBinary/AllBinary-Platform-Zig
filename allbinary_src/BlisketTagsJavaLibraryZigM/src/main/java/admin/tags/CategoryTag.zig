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
const CategoryHelperFactory = @import("admin/taghelpers/CategoryHelperFactory.zig").CategoryHelperFactory;
const CategoryRequestHelperFactory = @import("admin/taghelpers/CategoryRequestHelperFactory.zig").CategoryRequestHelperFactory;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const CategoryTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.CategoryTag";
    base: TableTag = undefined,
    logUtil: ?*LogUtil = null,
    xsl: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.xsl = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TableTag.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setTagHelperFactory", .{ CategoryHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ CategoryRequestHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setXsl(self: *Self, value: ?*String) void {
        self.xsl = value;
    }
    

    // throws LicensingException
    pub fn viewCategory(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(CategoryRequestHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("viewCategory"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to view a Category"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("viewCategory()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn viewCategories(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(CategoryRequestHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("viewCategories"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to view a Categories"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("viewCategories()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "isEnabled").isEnabled()) {
                if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                    _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.TEMPLATEFILENAME, self.xsl });
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ CategoryData.getInstance().?.VIEW }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.viewCategory());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ output });
                        }
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ CategoryData.getInstance().?.VIEW }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.viewCategories());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ output });
                        }
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

