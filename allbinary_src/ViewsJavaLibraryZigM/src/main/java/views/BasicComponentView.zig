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
// package views

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const BasicTransformer = @import("org/allbinary/logic/visual/transform/BasicTransformer.zig").BasicTransformer;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const TransformDocumentFactory = @import("org/allbinary/logic/visual/transform/data/TransformDocumentFactory.zig").TransformDocumentFactory;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;

pub const BasicComponentView = struct {
    const Self = @This();
    pub const java_name = "views.BasicComponentView";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    transformDocumentInterface: ?*TransformDocumentInterface = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    NO_TYPE: i32 = 0,
    // Implements TransformInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        this.transformDocumentInterface = null;
        this.transformInfoInterface = null;
        this.NO_TYPE = 0;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, this.commonStrings.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "setTransformInfoInterface", .{ transformInfoInterface });
        _ = Inheritance.call(this, "setTransformDocumentInterface", .{ TransformDocumentFactory.getInstance() });
        return this;
    }
    

    pub fn getTypeId(self: *Self) i32 {
        return self.NO_TYPE;
    }
    

    pub fn getTransformDocumentInterface(self: *Self) ?*TransformDocumentInterface {
        return self.transformDocumentInterface;
    }
    

    pub fn setTransformDocumentInterface(self: *Self, transformDocumentInterface: ?*TransformDocumentInterface) void {
        self.transformDocumentInterface = transformDocumentInterface;
    }
    

    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return self.transformInfoInterface;
    }
    

    pub fn setTransformInfoInterface(self: *Self, transformInfoInterface: ?*TransformInfoInterface) void {
        self.transformInfoInterface = transformInfoInterface;
    }
    

    pub fn toXmlDoc(self: *Self) ?*Document {
        return Inheritance.upcast(?*Document, self.transformDocumentInterface.?.getDoc());
    }
    

    // throws Exception
    pub fn getDoc(self: *Self) ?*Document {
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.receiverOf(self.getTransformInfoInterface().?, "getDataDocument").getDataDocument());
        const dataNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc().?, "importNode", .{ document.?.getFirstChild(), true }));
        if (dataNode != null) {
            _ = Inheritance.call(Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getBaseNode").getBaseNode().?, "appendChild", .{ dataNode });
        }
        return Inheritance.upcast(?*Document, Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc());
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.getDoc() }));
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(BasicTransformer, "create2", .{ self.abeClientInformation, self.getTransformInfoInterface() }), "translate", .{ success }));
            return result;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

