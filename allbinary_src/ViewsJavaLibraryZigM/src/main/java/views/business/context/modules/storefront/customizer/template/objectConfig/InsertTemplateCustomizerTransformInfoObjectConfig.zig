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
// package views.business.context.modules.storefront.customizer.template.objectConfig

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoDomNodeView = @import("org/allbinary/logic/visual/transform/info/TransformInfoDomNodeView.zig").TransformInfoDomNodeView;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfosData = @import("org/allbinary/logic/visual/transform/info/TransformInfosData.zig").TransformInfosData;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const NoTemplateTransformInfoObjectConfig = @import("views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig.zig").NoTemplateTransformInfoObjectConfig;

pub const InsertTemplateCustomizerTransformInfoObjectConfig = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig";
    base: NoTemplateTransformInfoObjectConfig = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(NoTemplateTransformInfoObjectConfig, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(NoTemplateTransformInfoObjectConfig, "create2", .{ transformInfoInterface, document }).*;
        this.initFields();
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create3(transformInfoInterface: ?*TransformInfoInterface, name: ?*String, @"type": ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(NoTemplateTransformInfoObjectConfig, "create3", .{ transformInfoInterface, name, @"type" }).*;
        this.initFields();
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn set(self: *Self, aParentViewName: ?*String) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Setting: "), aParentViewName), self, String.literal("set()") });
        }
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.receiver(self, "toXmlDoc").toXmlDoc());
        const parentComponentsNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ TransformInfosData.getInstance().?.NAME }));
        if (parentComponentsNodeList != null and parentComponentsNodeList.?.getLength() > 0) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Replacing"), self, String.literal("set()") });
            }
            const componentNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.receiverOf(Inheritance.call(parentComponentsNodeList.?, "item", .{ 0 }).?, "getChildNodes").getChildNodes().?, "item", .{ 0 }));
            if (componentNode != null) {
                _ = Inheritance.call(document.?, "removeChild", .{ componentNode });
            }
            _ = Inheritance.call(Inheritance.call(parentComponentsNodeList.?, "item", .{ 0 }).?, "appendChild", .{ Inheritance.call(Inheritance.callStatic(TransformInfoDomNodeView, "create1", .{ aParentViewName }), "toXmlNode", .{ document }) });
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Setting"), self, String.literal("set()") });
            }
            const objectConfigNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.call(document.?, "getElementsByTagName", .{ TransformInfoObjectConfigData.getInstance().?.NAME }).?, "item", .{ 0 }));
            const parentComponentsNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ TransformInfosData.getInstance().?.NAME }));
            _ = Inheritance.call(objectConfigNode.?, "appendChild", .{ parentComponentsNode });
            const transformInfoDomNodeView: ?*TransformInfoDomNodeView = Inheritance.callStatic(TransformInfoDomNodeView, "create1", .{ aParentViewName });
            _ = Inheritance.call(parentComponentsNode.?, "appendChild", .{ Inheritance.call(transformInfoDomNodeView.?, "toXmlNode", .{ document }) });
        }
    }
};

