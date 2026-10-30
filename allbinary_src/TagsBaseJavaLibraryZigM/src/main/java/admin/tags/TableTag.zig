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
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const TagHelperFactoryInterface = @import("admin/taghelpers/TagHelperFactoryInterface.zig").TagHelperFactoryInterface;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SqlStrings = @import("org/allbinary/logic/communication/sql/SqlStrings.zig").SqlStrings;
const BooleanUtil = @import("org/allbinary/logic/java/bool/BooleanUtil.zig").BooleanUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const PropertiesTag = @import("tags/PropertiesTag.zig").PropertiesTag;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const TableTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.TableTag";
    base: PropertiesTag = undefined,
    logUtil: ?*LogUtil = null,
    enabled: ?*String = null,
    tagHelperFactoryInterface: ?*TagHelperFactoryInterface = null,
    tagRequestHelperFactoryInterface: ?*TagHelperFactoryInterface = null,
    requestObject: ?Object = null,
    current: ?*Integer = null,
    total: ?*Integer = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.enabled = null;
        this.tagHelperFactoryInterface = null;
        this.tagRequestHelperFactoryInterface = null;
        this.requestObject = null;
        this.current = null;
        this.total = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PropertiesTag.create().*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setIsSelected(self: *Self, enabled: ?*String) void {
        self.enabled = enabled;
    }
    

    // throws Exception
    pub fn isEnabled(self: *Self) bool {
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.enabled })) {
            if (Inheritance.call(BooleanUtil.getInstance().?, "getFromString", .{ self.enabled }) or Inheritance.call(self.enabled.?, "compareTo", .{ String.literal("on") }) == 0) {
                return true;
            }
        }
        return false;
    }
    

    pub fn setTagHelperFactory(self: *Self, tagHelperFactoryInterface: ?*TagHelperFactoryInterface) void {
        self.tagHelperFactoryInterface = tagHelperFactoryInterface;
    }
    

    pub fn getTagHelperFactoryInterface(self: *Self) ?*TagHelperFactoryInterface {
        return self.tagHelperFactoryInterface;
    }
    

    pub fn setTagRequestHelperFactory(self: *Self, tagHelperFactoryInterface: ?*TagHelperFactoryInterface) void {
        self.tagRequestHelperFactoryInterface = tagHelperFactoryInterface;
    }
    

    pub fn getTagRequestHelperFactoryInterface(self: *Self) ?*TagHelperFactoryInterface {
        return self.tagRequestHelperFactoryInterface;
    }
    

    pub fn setCurrent(self: *Self, current: ?*Integer) void {
        self.current = current;
    }
    

    pub fn getCurrent(self: *Self) ?*Integer {
        return self.current;
    }
    

    pub fn setTotal(self: *Self, total: ?*Integer) void {
        self.total = total;
    }
    

    pub fn getTotal(self: *Self) ?*Integer {
        return self.total;
    }
    

    // throws LicensingException
    pub fn drop(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.getTagHelperFactoryInterface().?, "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("drop"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to drop table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP, e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn create(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.getTagHelperFactoryInterface().?, "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("create"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to create table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("create()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn restore(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.getTagHelperFactoryInterface().?, "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("restore"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to restore backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("restore()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn backup(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.getTagHelperFactoryInterface().?, "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("backup"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to make backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("backup()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn insert(self: *Self) ?*String {
        { // try
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.requestObject).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("insert"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ self.requestObject, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to insert"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("insert()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn delete(self: *Self) ?*String {
        { // try
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.requestObject).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.delete, null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ self.requestObject, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to delete"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn update(self: *Self) ?*String {
        { // try
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.requestObject).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("update"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ self.requestObject, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to update"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                const request: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getRequest").getRequest());
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TableTag Helper: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.getTagHelperFactoryInterface()).?.class))).?))).name) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Request URI: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ request.?.getRequestURI() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
            }
            if (self.getTagRequestHelperFactoryInterface() != null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TableTag RequestHelper: "), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.getTagRequestHelperFactoryInterface()).?.class))).?))).name)), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("TableTag RequestHelper: null"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TableTag this.getCommand(): "), Inheritance.receiver(self, "getCommand").getCommand()), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
            }
            if (self.isEnabled()) {
                if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INSERT }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ SqlStrings.getInstance().?.INSERT_INTO }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DELETE }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ SqlStrings.getInstance().?.UPDATE }) == 0) {
                        self.requestObject = Inheritance.upcast(@TypeOf(self.requestObject), Inheritance.call(self.getTagRequestHelperFactoryInterface().?, "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
                    }
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INSERT }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ SqlStrings.getInstance().?.INSERT_INTO }) == 0) {
                        _ = self.insert();
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DELETE }) == 0) {
                        _ = self.delete();
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ SqlStrings.getInstance().?.UPDATE }) == 0) {
                        _ = self.update();
                    }
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.BACKUP }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.backup());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                        return SKIP_BODY;
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.RESTORE }) == 0) {
                        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ String.literal("current"), self.getCurrent() });
                        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ String.literal("total"), self.getTotal() });
                        const output: ?*String = Inheritance.upcast(?*String, self.restore());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                        return SKIP_BODY;
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DROP }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.drop());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                        return SKIP_BODY;
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.CREATE }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.create());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                        return SKIP_BODY;
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INSERT }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.insert());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DELETE }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.delete());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                    } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE }) == 0) {
                        const output: ?*String = Inheritance.upcast(?*String, self.update());
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGEXTRAOUTPUT })) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(output, String.literal("<br />")) });
                        }
                    }
                }
            }
            return EVAL_BODY_INCLUDE;
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

