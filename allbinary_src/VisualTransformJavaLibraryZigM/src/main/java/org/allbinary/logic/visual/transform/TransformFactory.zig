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
// package org.allbinary.logic.visual.transform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const TransformInfoEntity = @import("org/allbinary/data/tables/transform/info/TransformInfoEntity.zig").TransformInfoEntity;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoHttpFactory = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpFactory.zig").TransformInfoHttpFactory;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectFactory = @import("org/allbinary/logic/visual/transform/info/TransformInfoObjectFactory.zig").TransformInfoObjectFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;

pub const TransformFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.TransformFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    var instance: ?*TransformFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn getInstance() ?*TransformFactory {
        return Inheritance.upcast(?*TransformFactory, TransformFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, viewName: ?*String, ownerTransformInfoInterface: ?*TransformInfoInterface) ?*TransformInterface {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Creating Transform: "), viewName), self, self.commonStrings.?.GET_INSTANCE });
            }
            const ownerTransformInfoHttpInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, ownerTransformInfoInterface);
            const transformInfoEntity: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
            const transformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntity.?, "get", .{ viewName, Inheritance.receiver(ownerTransformInfoHttpInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(ownerTransformInfoHttpInterface.?, "getPageContext").getPageContext() }));
            if (transformInfoInterface == null) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Such View In DB: "), viewName); break :exception error.Exception; }});
            }
            _ = Inheritance.receiver(transformInfoInterface.?, "setChild").setChild();
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(TransformInfoObjectFactory.getInstance().?, "getInstance", .{ abeClientInformation, transformInfoInterface }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Created Transform: "), viewName), self, self.commonStrings.?.GET_INSTANCE });
            }
            return Inheritance.cast(?*TransformInterface, anyType);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInterface {
        { // try
            const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Creating Transform: "), Inheritance.call(propertiesHashMap.?, "get", .{ transformInfoData.?.NAME })), self, self.commonStrings.?.GET_INSTANCE });
            }
            const transformInfoEntity: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
            var transformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntity.?, "get", .{ Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ transformInfoData.?.NAME })), propertiesHashMap, pageContext }));
            if (transformInfoInterface != null) {
                _ = Inheritance.call(transformInfoInterface.?, "override", .{ propertiesHashMap });
            } else {
                transformInfoInterface = Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoHttpFactory, "getInstance", .{ propertiesHashMap, pageContext }));
            }
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(TransformInfoObjectFactory.getInstance().?, "getInstance", .{ abeClientInformation, transformInfoInterface }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Created Transform: "), Inheritance.call(propertiesHashMap.?, "get", .{ transformInfoData.?.NAME })), self, self.commonStrings.?.GET_INSTANCE });
            }
            return Inheritance.cast(?*TransformInterface, anyType);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failed To Get Instance: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ TransformInfoData.getInstance().?.NAME })) });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("->TransformFactory") });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInterface {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Creating Transform: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("getInstance(TransformInfoInterface)") });
            }
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(TransformInfoObjectFactory.getInstance().?, "getInstance", .{ abeClientInformation, transformInfoInterface }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Created Transform: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("getInstance(TransformInfoInterface)") });
            }
            return Inheritance.cast(?*TransformInterface, anyType);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(TransformInfoInterface)"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

