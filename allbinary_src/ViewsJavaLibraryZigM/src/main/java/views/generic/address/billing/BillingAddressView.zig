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
// package views.generic.address.billing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;
const StatesView = @import("views/generic/address/StatesView.zig").StatesView;

pub const BillingAddressView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.billing.BillingAddressView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    request: ?*HttpServletRequest = null,
    streetAddress: ?*StreetAddress = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.streetAddress = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getRequest(self: *Self) ?*HttpServletRequest {
        return self.request;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const formNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StreetAddressData.FORM }));
            _ = Inheritance.call(formNode.?, "appendChild", .{ Inheritance.call(self.streetAddress.?, "toXmlNode", .{ document }) });
            return formNode;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XSLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("toXmlNode"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn addDomNodeInterfaces(self: *Self) void {
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.cast(?*DomNodeInterface, self) });
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.cast(?*DomNodeInterface, StatesView.create()) });
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            _ = self.addDomNodeInterfaces();
            return Inheritance.upcast(?*String, self.base.view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

