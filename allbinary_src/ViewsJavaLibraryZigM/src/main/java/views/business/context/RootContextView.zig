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
// package views.business.context

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformFactory = @import("org/allbinary/logic/visual/transform/TransformFactory.zig").TransformFactory;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformTemplateInterface = @import("org/allbinary/logic/visual/transform/template/TransformTemplateInterface.zig").TransformTemplateInterface;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;
const NoTemplateTransformInfoObjectConfig = @import("views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig.zig").NoTemplateTransformInfoObjectConfig;

pub const RootContextView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.RootContextView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements TransformTemplateInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, String.literal("RootContextView()") });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName()), self, String.literal("view()") });
            }
            const viewName: ?*String = Inheritance.upcast(?*String, self.getName());
            const componentInterface: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.call(TransformFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, viewName, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }));
            return Inheritance.upcast(?*String, Inheritance.receiver(componentInterface.?, "view").view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn getName(self: *Self) ?*String {
        { // try
            const objectConfig: ?*NoTemplateTransformInfoObjectConfig = Inheritance.callStatic(NoTemplateTransformInfoObjectConfig, "create2", .{ Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface(), Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface().?, "toXmlDoc").toXmlDoc() });
            const componentsVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(objectConfig.?, "getTransforms").getTransforms());
            if (componentsVector.?.size() == 0) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Template View Not Set - No Components"); break :exception error.Exception; }});
            }
            if (componentsVector.?.size() > 1) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("To Many Root Template Views: "), componentsVector.?.size()); break :exception error.Exception; }});
            }
            const transformInfoInterface: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(componentsVector.?, "get", .{ 0 }));
            const viewName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(transformInfoInterface.?, "getName").getName());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Root Template With View Name: "), viewName), self, String.literal("getName()") });
            }
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ viewName })) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Template View Not Set - No View Name"); break :exception error.Exception; }});
            }
            return viewName;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("getName()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

