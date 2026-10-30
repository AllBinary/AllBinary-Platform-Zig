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
// package taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TransformFactory = @import("org/allbinary/logic/visual/transform/TransformFactory.zig").TransformFactory;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;

pub const ViewHelper = struct {
    const Self = @This();
    pub const java_name = "taghelpers.ViewHelper";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    componentInterface: ?*TransformInterface = null,
    NO_TYPE: i32 = 0,
    // Implements TransformInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        this.NO_TYPE = 0;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.componentInterface = Inheritance.upcast(@TypeOf(this.componentInterface), Inheritance.call(TransformFactory.getInstance().?, "getInstance", .{ this.abeClientInformation, hashMap, pageContext }));
        return this;
    }
    

    pub fn getTypeId(self: *Self) i32 {
        return self.NO_TYPE;
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            return Inheritance.upcast(?*String, Inheritance.receiver(self.componentInterface.?, "view").view());
        }
        // catch (Exception e):
//             var @"error": ?*String = String.literal("Failed to View: "); _ = @"error";
//             if (self.componentInterface != null) {
//                 @"error" = String.plus(@"error", String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.componentInterface).?.class))).?))).name));
//             } else {
//                 @"error" = String.plus(@"error", String.literal("Unknown"));
//             }
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        { // try
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Hmm: "), Inheritance.receiverOf(Inheritance.receiver(self.componentInterface.?, "getTransformDocumentInterface").getTransformDocumentInterface().?, "getDoc").getDoc()); break :exception error.Exception; }});
        }
        // catch (Exception e):
//             var @"error": ?*String = String.literal("Failed to View: "); _ = @"error";
//             if (self.componentInterface != null) {
//                 @"error" = String.plus(@"error", String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.componentInterface).?.class))).?))).name));
//             } else {
//                 @"error" = String.plus(@"error", String.literal("Unknown"));
//             }
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn getViewObject(self: *Self) ?*TransformInterface {
        return self.componentInterface;
    }
    

    // throws Exception
    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return Inheritance.upcast(?*TransformInfoInterface, Inheritance.receiver(self.componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface());
    }
    

    pub fn getTransformDocumentInterface(self: *Self) ?*TransformDocumentInterface {
        _ = self;
        return null;
    }
    

    pub fn setTransformDocumentInterface(self: *Self, viewDocumentInterface: ?*TransformDocumentInterface) void {
        _ = viewDocumentInterface;
        _ = self;
        return;
    }
};

