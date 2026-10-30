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
// package tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const ValidatedViewHelperFactory = @import("taghelpers/ValidatedViewHelperFactory.zig").ValidatedViewHelperFactory;
const TransformTag = @import("tags/TransformTag.zig").TransformTag;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const ValidationTransformTag = struct {
    const Self = @This();
    pub const java_name = "tags.ValidationTransformTag";
    base: TransformTag = undefined,
    logUtil: ?*LogUtil = null,
    xslFile: ?*String = null,
    logic: bool = false,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.xslFile = null;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformTag, "create1", .{ ValidatedViewHelperFactory.create() }).*;
        this.initFields();
        this.logic = true;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setXsl(self: *Self, value: ?*String) void {
        self.xslFile = value;
        _ = Inheritance.call(self, "setTemplateFile", .{ self.xslFile });
    }
    

    pub fn setLogic(self: *Self, logic: bool) void {
        self.logic = logic;
    }
    

    // throws Exception
    pub fn isValid(self: *Self) bool {
        { // try
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(Inheritance.receiver(self, "getHelper").getHelper()).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ Inheritance.receiver(self, "getHelper").getHelper(), null }));
            return result.?.booleanValue();
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(Inheritance.receiver(self, "getHelper").getHelper()).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("validationInfo"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ Inheritance.receiver(self, "getHelper").getHelper(), null }));
            return Inheritance.upcast(?*String, result);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("validationInfo()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                const request: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getRequest").getRequest());
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ValidationViewTag Start For: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getName").getName() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nView FIle: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getObjectFile").getObjectFile() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nRequest URI: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ request.?.getRequestURI() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
            }
            _ = Inheritance.receiver(self, "setHelper").setHelper();
            if (self.isValid()) {
                _ = self.base.doStartTag();
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("View File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getObjectFile").getObjectFile() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nLogic includes body if true=") });
                    _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.logic });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                }
                if (self.logic) {
                    return EVAL_BODY_INCLUDE;
                } else {
                    return SKIP_BODY;
                }
            } else {
                _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.validationInfo() });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("View File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getObjectFile").getObjectFile() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nisValid()=false") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nLogic skips body if true=") });
                    _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.logic });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                }
                if (self.logic) {
                    return SKIP_BODY;
                } else {
                    return EVAL_BODY_INCLUDE;
                }
            }
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
    

    pub fn doEndTag(self: *Self) i32 {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Tag Ended"), self, String.literal("doEndTag") });
        }
        self.logic = true;
        return self.base.doEndTag();
    }
};

