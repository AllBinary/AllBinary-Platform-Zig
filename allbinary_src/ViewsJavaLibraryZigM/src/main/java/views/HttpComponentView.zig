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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const BasicTransformer = @import("org/allbinary/logic/visual/transform/BasicTransformer.zig").BasicTransformer;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformHttpRequestDocumentFactory = @import("org/allbinary/logic/visual/transform/data/TransformHttpRequestDocumentFactory.zig").TransformHttpRequestDocumentFactory;
const TransformInfoHttpComposite = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpComposite.zig").TransformInfoHttpComposite;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;

pub const HttpComponentView = struct {
    const Self = @This();
    pub const java_name = "views.HttpComponentView";
    base: TransformInfoHttpComposite = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    domNodeInterfaceVector: ?*BasicArrayList = null,
    transformDocumentInterface: ?*TransformDocumentInterface = null,
    NO_TYPE: i32 = 0,
    // Implements TransformInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        this.transformDocumentInterface = null;
        this.NO_TYPE = 0;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoHttpComposite, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        this.domNodeInterfaceVector = Inheritance.upcast(@TypeOf(this.domNodeInterfaceVector), BasicArrayListD.create());
        _ = Inheritance.call(this, "setTransformDocumentInterface", .{ Inheritance.callStatic(TransformHttpRequestDocumentFactory, "getInstance", .{ Inheritance.receiver(this, "getPageContext").getPageContext(), Inheritance.receiver(this, "getWeblisketSession").getWeblisketSession() }) });
        Inheritance.bindOverrides(this);
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
    

    pub fn addDomNodeInterface(self: *Self, domNodeInterface: ?*DomNodeInterface) void {
        _ = Inheritance.call(self.domNodeInterfaceVector.?, "add", .{ domNodeInterface });
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        { // try
            const size: i32 = self.domNodeInterfaceVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const domNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.call(self.domNodeInterfaceVector.?, "get", .{ index }));
                _ = Inheritance.call(self.transformDocumentInterface.?.getBaseNode().?, "appendChild", .{ Inheritance.call(domNodeInterface.?, "toXmlNode", .{ self.transformDocumentInterface.?.getDoc() }) });
                }
            }
            return Inheritance.upcast(?*Document, Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("toXmlDoc()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn getDoc(self: *Self) ?*Document {
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getDataDocument").getDataDocument());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomNodeHelper, "getFirstChildElement", .{ document }));
        if (node != null) {
            const dataNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc().?, "importNode", .{ node, true }));
            if (dataNode != null) {
                _ = Inheritance.call(Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getBaseNode").getBaseNode().?, "appendChild", .{ dataNode });
            }
        }
        return Inheritance.upcast(?*Document, Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc());
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            _ = self.toXmlDoc();
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.getDoc() }));
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(BasicTransformer, "create2", .{ self.abeClientInformation, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }), "translate", .{ success }));
            return result;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

