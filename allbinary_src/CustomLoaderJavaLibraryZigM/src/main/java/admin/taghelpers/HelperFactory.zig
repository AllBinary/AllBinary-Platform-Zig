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
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const HelperFactory = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.HelperFactory";
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws LicensingException
    pub fn getInstance5(abeClientInformation: ?*AbeClientInformationInterface, factoryName: ?*String, className: ?*String, hashMap: ?*HashMap, httpServletRequest: ?*HttpServletRequest) ?Object {
        _ = factoryName;
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            const params: []?Object = array_N65963: { const array_N65963_array = allocator.alloc(?Object, @intCast(2)) catch unreachable; @memset(array_N65963_array, null); break :array_N65963 array_N65963_array; };
            const classes: []?*anyopaque = array_N66018: { const array_N66018_array = allocator.alloc(?*anyopaque, @intCast(2)) catch unreachable; @memset(array_N66018_array, null); break :array_N66018 array_N66018_array; };
            const abeFactory: ?*AbeFactory = Inheritance.upcast(?*AbeFactory, AbeFactory.getInstance());
            classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(hashMap).?.class))));
            classes[@intCast(1)] = Inheritance.upcast(@TypeOf(classes[@intCast(1)]), Inheritance.call(abeFactory.?, "getClass", .{ abeClientInformation, String.literal("javax.servlet.http.HttpServletRequest") }));
            params[@intCast(0)] = Inheritance.cast(?Object, hashMap);
            params[@intCast(1)] = Inheritance.cast(?Object, httpServletRequest);
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(abeFactory.?, "getInstance", .{ abeClientInformation, className, classes, params }));
            return anyType;
        }
        // catch (LicensingException e):
//             const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.literal("Failed To Get Instance Args: HashMap="), Object.toString(Object.of(hashMap))), String.literal(" HttpServletRequest=")), httpServletRequest)); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ @"error", String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed To Get Instance"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ @"error", String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             return null;
    }
    

    // throws LicensingException
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance5(abeClientInformation: ?*AbeClientInformationInterface, factoryName: ?*String, className: ?*String, hashMap: ?*HashMap, pageContext: ?*PageContext) ?Object {
        _ = factoryName;
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            const params: []?Object = array_N67288: { const array_N67288_array = allocator.alloc(?Object, @intCast(2)) catch unreachable; @memset(array_N67288_array, null); break :array_N67288 array_N67288_array; };
            const classes: []?*anyopaque = array_N67343: { const array_N67343_array = allocator.alloc(?*anyopaque, @intCast(2)) catch unreachable; @memset(array_N67343_array, null); break :array_N67343 array_N67343_array; };
            const abeFactory: ?*AbeFactory = Inheritance.upcast(?*AbeFactory, AbeFactory.getInstance());
            classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(hashMap).?.class))));
            classes[@intCast(1)] = Inheritance.upcast(@TypeOf(classes[@intCast(1)]), Inheritance.call(abeFactory.?, "getClass", .{ abeClientInformation, String.literal("javax.servlet.jsp.PageContext") }));
            params[@intCast(0)] = Inheritance.cast(?Object, hashMap);
            params[@intCast(1)] = Inheritance.cast(?Object, pageContext);
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(abeFactory.?, "getInstance", .{ abeClientInformation, className, classes, params }));
            return anyType;
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.literal("Failed To Get Instance Args: HashMap="), Object.toString(Object.of(hashMap))), String.literal(" PageContext=")), pageContext)); _ = @"error";
//                 _ = Inheritance.call(logUtil.?, "put", .{ @"error", String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             return null;
    }
    

    // throws LicensingException
    pub fn getInstance6(abeClientInformation: ?*AbeClientInformationInterface, factoryName: ?*String, className: ?*String, hashMap: ?*HashMap, specialhashMap: ?*HashMap, pageContext: ?*PageContext) ?Object {
        _ = factoryName;
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            const params: []?Object = array_N68640: { const array_N68640_array = allocator.alloc(?Object, @intCast(3)) catch unreachable; @memset(array_N68640_array, null); break :array_N68640 array_N68640_array; };
            const classes: []?*anyopaque = array_N68695: { const array_N68695_array = allocator.alloc(?*anyopaque, @intCast(3)) catch unreachable; @memset(array_N68695_array, null); break :array_N68695 array_N68695_array; };
            const abeFactory: ?*AbeFactory = Inheritance.upcast(?*AbeFactory, AbeFactory.getInstance());
            classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(hashMap).?.class))));
            classes[@intCast(1)] = Inheritance.upcast(@TypeOf(classes[@intCast(1)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(specialhashMap).?.class))));
            classes[@intCast(2)] = Inheritance.upcast(@TypeOf(classes[@intCast(2)]), Inheritance.call(abeFactory.?, "getClass", .{ abeClientInformation, String.literal("javax.servlet.jsp.PageContext") }));
            params[@intCast(0)] = Inheritance.cast(?Object, hashMap);
            params[@intCast(1)] = Inheritance.cast(?Object, specialhashMap);
            params[@intCast(2)] = Inheritance.cast(?Object, pageContext);
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(abeFactory.?, "getInstance", .{ abeClientInformation, className, classes, params }));
            return anyType;
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.literal("Failed To Get Instance Args: HashMap="), Object.toString(Object.of(hashMap))), String.literal(" PageContext=")), pageContext)); _ = @"error";
//                 _ = Inheritance.call(logUtil.?, "put", .{ @"error", String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             return null;
    }
    

    // throws LicensingException
    pub fn getInstance(abeClientInformation: ?*AbeClientInformationInterface, factoryName: ?*String, className: ?*String) ?Object {
        _ = factoryName;
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, className }));
            return anyType;
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.plus(factoryName, String.literal("->HelperFactory")), String.literal("getInstance(String, String, HashMap, PageContext)"), e });
//             }
//             return null;
    }
};

