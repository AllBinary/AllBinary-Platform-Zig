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
// package org.allbinary.logic.visual.transform.template

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
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectFactory = @import("org/allbinary/logic/visual/transform/info/TransformInfoObjectFactory.zig").TransformInfoObjectFactory;
const TransformTemplateInterface = @import("org/allbinary/logic/visual/transform/template/TransformTemplateInterface.zig").TransformTemplateInterface;

pub const TransformTemplateFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.TransformTemplateFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*TransformTemplateFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformTemplateFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformTemplateFactory {
        return Inheritance.upcast(?*TransformTemplateFactory, TransformTemplateFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance4(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, templateName: ?*String, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformTemplateInterface {
        _ = self;
        { // try
            const transformInfoEntity: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
            const transformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntity.?, "get", .{ templateName, propertiesHashMap, pageContext }));
            return Inheritance.cast(?*TransformTemplateInterface, Inheritance.call(TransformInfoObjectFactory.getInstance().?, "getInstance", .{ abeClientInformation, transformInfoInterface }));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed To Get Instance"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.plus(@"error", templateName), String.literal("->TemplateFactory")), self, String.literal("getInstance(viewName, HashMap, PageContext)"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

